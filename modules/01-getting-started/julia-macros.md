# Julia Has Genuine Runtime Macros

---
Macros are defined via functions that can generate block code in a simple single-line invocation. When a program is run, it evaluates the macro, and the code produced is eventually evaluated as an ordinary expression.

Macros can be distinguished as they are preceded by the @ symbol.

Julia also implements a new hybrid feature called a generated function, via a special macro called @generated. Generated functions have the capability to create specialized code depending on the types of their arguments with more flexibility and less code than what can be achieved with multiple dispatch.

Macros are not to everyone's taste and there will always be ways to code in a more conventional fashion; however, even if not for you, they will have been used by many package developers and you will make use of them extensively.