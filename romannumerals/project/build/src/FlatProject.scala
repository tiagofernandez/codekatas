import sbt._

class FlatProject(info: ProjectInfo) extends DefaultProject(info) {
  
  override def sourcePath = "src"
  override def mainSources = descendents(sourcePath, "*.scala")
  override def mainResources = descendents(sourcePath, "*.*")

  override def testSourcePath = "test"
  override def testSources = descendents(testSourcePath, "*.scala")
  override def testResources = descendents(testSourcePath, "*.*")
}