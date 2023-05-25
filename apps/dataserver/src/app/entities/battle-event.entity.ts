import { BattleEventType } from '@shared/types/battle-event.type';
import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { Battle } from "./battle.entity";
import { Character } from "./character.entity";

@Entity({ name: 'battle_events' })
export class BattleEvent {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ name: 'character_id', type: 'char', length: 36 })
  characterId: Character['id'];

  @Column({ name: 'battle_id', type: 'char', length: 36 })
  battleId: Battle['id'];

  @Column({ name: 'is_host', type: 'boolean' })
  isHost: boolean;

  @Column({ type: 'varchar' })
  event: BattleEventType['event'];

  @Column({ type: 'json', nullable: true })
  state: BattleEventType['state'];

  // relationships

  @ManyToOne(() => Battle)
  @JoinColumn({ name: 'battle_id' })
  battle: Battle;

  @ManyToOne(() => Character)
  @JoinColumn({ name: 'character_id' })
  character: Character;
}
