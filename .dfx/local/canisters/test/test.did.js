export const idlFactory = ({ IDL }) => {
  return IDL.Service({ 'arr' : IDL.Func([], [IDL.Vec(IDL.Int)], ['query']) });
};
export const init = ({ IDL }) => { return []; };
