import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct TryPublish: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://weissazool.github.io/try-publish")!
    var name = "Weissazool Dot Com"
    var description = "Will it rise again?"
    var language: Language { .english }
    var imagePath: Path? { nil }
}


try TryPublish().publish(using: [
    // Generate the website using the built-in Foundation theme
    .generateHTML(withTheme: .foundation),
    // Deploy to Github Pages
    .deploy(using: .gitHub("weissazool/try-publish"))
])
