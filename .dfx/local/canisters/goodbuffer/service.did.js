export const idlFactory = ({ IDL }) => {
  const Student = IDL.Record({ 'age' : IDL.Nat, 'name' : IDL.Text });
  return IDL.Service({
    'ChangeAge' : IDL.Func([IDL.Nat, IDL.Nat], [], []),
    'addStudent' : IDL.Func([Student], [], []),
  });
};
export const init = ({ IDL }) => { return []; };
