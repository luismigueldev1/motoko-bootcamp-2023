export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'add_language' : IDL.Func([IDL.Text], [IDL.Vec(IDL.Text)], []),
  });
};
export const init = ({ IDL }) => { return []; };
