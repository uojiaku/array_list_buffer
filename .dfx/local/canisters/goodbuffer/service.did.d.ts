import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface Student { 'age' : bigint, 'name' : string }
export interface _SERVICE {
  'ChangeAge' : ActorMethod<[bigint, bigint], undefined>,
  'addStudent' : ActorMethod<[Student], undefined>,
}
