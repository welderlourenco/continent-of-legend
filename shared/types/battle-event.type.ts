import { BattleEventEnum } from "../enums/battle-event.enum";

type BattleEventDeckShuffleStateType = Record<any, never>; // @todo: GameCard[]
type BattleEventCardSummonStateType = Record<any, never>; // @todo: GameCard

export type BattleEventType =
  | {
    event: BattleEventEnum.DECK_SHUFFLE;
    state: BattleEventDeckShuffleStateType;
  }
  | {
    event: BattleEventEnum.CARD_SUMMON;
    state: BattleEventCardSummonStateType;
  };
