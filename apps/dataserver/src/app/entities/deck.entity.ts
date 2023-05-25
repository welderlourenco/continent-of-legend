import { MapEnum } from '@shared/enums/map.enum';
import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from "typeorm";
import { Card } from './card.entity';
import { Character } from './character.entity';

@Entity({ name: 'decks' })
export class Deck {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ name: 'character_id', type: 'char', length: 36 })
  characterId: Character['id'];

  @Column({ name: 'card_id', type: 'char', length: 36 })
  cardId: Card['id'];

  @Column({ type: 'enum', enum: MapEnum })
  map: MapEnum;

  @Column({ type: 'int' })
  position: number;

  // relationships

  @ManyToOne(() => Character)
  @JoinColumn({ name: 'character_id' })
  character: Character;

  @ManyToOne(() => Card)
  @JoinColumn({ name: 'card_id' })
  card: Card;
}
