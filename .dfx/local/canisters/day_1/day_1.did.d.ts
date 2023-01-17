import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'get_counter' : ActorMethod<[], bigint>,
  'hours_to_minute' : ActorMethod<[bigint], bigint>,
  'is_even' : ActorMethod<[bigint], boolean>,
  'multiply' : ActorMethod<[bigint, bigint], bigint>,
  'multiply_homework' : ActorMethod<[bigint, bigint], number>,
  'set_counter' : ActorMethod<[bigint], undefined>,
  'test_divide' : ActorMethod<[bigint, bigint], boolean>,
  'volume' : ActorMethod<[bigint], bigint>,
}
