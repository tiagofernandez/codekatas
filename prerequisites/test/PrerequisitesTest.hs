import Prerequisites
import Test.HUnit

errorMsg = "Wrongly sorted classes"

input1 = ["CSE258: CSE244 CSE243 INTR100","CSE221: CSE254 INTR100","CSE254: CSE111 MATH210 INTR100","CSE244: CSE243 MATH210 INTR100","MATH210: INTR100","CSE101: INTR100","CSE111: INTR100","ECE201: CSE111 INTR100","ECE111: INTR100","CSE243: CSE254","INTR100:"]
output1 = ["INTR100","CSE101","CSE111","ECE111","ECE201","MATH210","CSE254","CSE221","CSE243","CSE244","CSE258"]
test1 = TestCase $ assertEqual errorMsg output1 (orderClasses input1)

input2 = ["CSE121: CSE110", "CSE110:", "MATH122:"]
output2 = ["CSE110", "CSE121", "MATH122"]
test2 = TestCase $ assertEqual errorMsg output2 (orderClasses input2)

tests = TestList [TestLabel "test1" test1, TestLabel "test2" test2]

main = runTestTT tests