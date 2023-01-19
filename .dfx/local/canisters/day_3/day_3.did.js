export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'remove_even' : IDL.Func([IDL.Vec(IDL.Nat)], [IDL.Vec(IDL.Nat)], ['query']),
    'second_maximum' : IDL.Func([IDL.Vec(IDL.Int)], [IDL.Int], ['query']),
  });
};
export const init = ({ IDL }) => { return []; };
