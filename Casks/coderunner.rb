cask "coderunner" do
  version "4.0.3"
  sha256 "77e79c2094cc27ad564c00e0390596f5c2698f38b5ccd96de83168a9b73b267e"

  url "https://coderunnerapp.com/download/update/CodeRunner-#{version}.zip"
  appcast "https://coderunnerapp.com/appcast.xml"
  name "CodeRunner"
  desc "Multi-language programming editor"
  homepage "https://coderunnerapp.com/"

  app "CodeRunner.app"

  zap trash: [
    "~/Library/Application Support/CodeRunner",
    "~/Library/Caches/com.krill.CodeRunner",
    "~/Library/Saved Application State/com.krill.CodeRunner.savedState",
  ]
end
