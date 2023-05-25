import { CardModifierType } from '@shared/types/card-modifier.type';
import { Column, CreateDateColumn, Entity, Index, JoinColumn, ManyToOne, OneToMany, PrimaryGeneratedColumn, UpdateDateColumn } from "typeorm";
import { Character } from './character.entity';
import { Deck } from './deck.entity';

@Entity({ name: 'cards' })
export class Card {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ name: 'character_id', type: 'char', length: 36 })
  characterId: Character['id'];

  @Column({ type: 'bigint' })
  code: number;

  @Column({ type: 'tinyint' })
  level: number;

  @Column({ name: 'modifiers', type: 'json', nullable: true })
  modifiers: CardModifierType[];

  @CreateDateColumn({ name: 'created_at' })
  @Index()
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  // relationships

  @ManyToOne(() => Character)
  @JoinColumn({ name: 'character_id' })
  character: Character;

  @OneToMany(() => Deck, (deck) => deck.card)
  decks?: Deck[];
}
