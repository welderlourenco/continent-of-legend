import { CharacterClassEnum } from '@shared/enums/character-class.enum';
import { Column, CreateDateColumn, DeleteDateColumn, Entity, Index, JoinColumn, ManyToOne, OneToMany, PrimaryGeneratedColumn, Unique, UpdateDateColumn } from "typeorm";
import { Deck } from './deck.entity';
import { User } from './user.entity';

@Entity({ name: 'characters' })
@Unique(['name'])
export class Character {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({ name: 'user_id', type: 'char', length: 36 })
  userId: User['id'];

  @Column({ type: 'varchar' })
  name: string;

  @Column({ type: 'enum', enum: CharacterClassEnum })
  class: CharacterClassEnum;

  @Column({ type: 'bigint' })
  experience: number;

  @Column({ type: 'int' })
  level: number;

  @Column({ type: 'bigint' })
  gold: number;

  @CreateDateColumn({ name: 'created_at' })
  @Index()
  createdAt: Date;

  @UpdateDateColumn({ name: 'updated_at' })
  updatedAt: Date;

  @DeleteDateColumn({ name: 'deleted_at', nullable: true })
  deletedAt: Date;

  // relationships

  @ManyToOne(() => User)
  @JoinColumn({ name: 'user_id' })
  user: User;

  @OneToMany(() => Deck, (deck) => deck.character)
  decks?: Deck[];
}
