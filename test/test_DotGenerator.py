from DotGenerator import *

dot = DotGenerator()

privateFields=[("aa", "int"),("bb","void*"),("cc","NS1::BClass"),("dd", "void")]
privateMethods=[("void", "privateMethod1", "(asdds, dss*)"), ("BClass", "privateMethod2", "(asdf)")]
publicFields=[("publicField1","CClass"), ("publicField2", "none")]
publicMethods=[("void", "publicMethod1", "(asdds, dss*)"), ("BClass", "publicMethod2", "(asdf)")]

c1 = UmlClass()
c1.fqn = "NS1::AClass"
c1.privateFields = privateFields
c1.privateMethods = privateMethods
c1.publicFields = publicFields
c1.publicMethods = publicMethods
dot.addClass(c1)

c2 = UmlClass()
c2.fqn = "NS1::BClass"
c2.parents.append(c1.fqn)
dot.addClass(c2)

c3 = UmlClass()
c3.fqn = "CClass"
dot.addClass(c3)

with open("uml2.dot", "w") as dotfile:
    dotfile.write(dot.generate())

#print (dot.generate())
