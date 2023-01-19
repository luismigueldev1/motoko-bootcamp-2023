export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'get_counter' : IDL.Func([], [IDL.Nat], ['query']),
    'hours_to_minute' : IDL.Func([IDL.Nat], [IDL.Nat], ['query']),
    'is_even' : IDL.Func([IDL.Nat], [IDL.Bool], ['query']),
    'multiply' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Nat], ['query']),
    'multiply_and_sqrt' : IDL.Func(
        [IDL.Int, IDL.Int],
        [IDL.Float64],
        ['query'],
      ),
    'set_counter' : IDL.Func([IDL.Nat], [], []),
    'test_divide' : IDL.Func([IDL.Nat, IDL.Nat], [IDL.Bool], ['query']),
    'volume' : IDL.Func([IDL.Nat], [IDL.Nat], ['query']),
  });
};
export const init = ({ IDL }) => { return []; };
