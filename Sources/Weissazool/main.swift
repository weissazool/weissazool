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
  var url = URL(string: "https://weissazool.github.io/weissazool")!
  var name = "Weissazool Dot Com"
  var description = "Dusting off my little corner of the internet"
  var language: Language { .english }
  var imagePath: Path? { nil }
}

try Weissazool().publish(withTheme: .weissazool)

//try Weissazool().publish(using: [
//  .addMarkdownFiles(),
//  // Posts are in LIFO order
//  .sortItems(by: \.date, order: .descending),
//  // Copy images to the output folder
//  .copyResources(),
//  // Generate the website with my custom theme
//  .generateHTML(withTheme: .weissazool),
//  // Deploy to Github Pages -- ideally, in the future. There are some PRs for this.
//  // https://github.com/JohnSundell/Publish/pull/74
//  .deploy(using: .gitHub("weissazool/weissazool"))
//])
