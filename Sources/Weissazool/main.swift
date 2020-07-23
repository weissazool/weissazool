import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Weissazool: Website {
  enum SectionID: String, WebsiteSectionID {
    // Add the sections that you want your website to contain here:
    case blog
    case projects
  }
  
  struct ItemMetadata: WebsiteItemMetadata {
    // Add any site-specific metadata that you want to use here.
  }
  
  // Website configuration
  var url = URL(string: "https://weissazool.github.io/")!
  var name = "Weissazool Dot Com"
  var description = "It's just this site, you know?"
  var language: Language { .english }
  var imagePath: Path? { nil }
}

try Weissazool().publish(
  withTheme: .weissazool,
  deployedUsing: .gitHub("weissazool/weissazool.github.io", useSSH: false)
)
