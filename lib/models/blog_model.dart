// To parse this JSON data, do
// final blogModel = blogModelFromJson(jsonString);

import 'dart:convert';

class BlogModel {
  BlogModel({
    this.id,
    this.date,
    this.dateGmt,
    this.guid,
    this.modified,
    this.modifiedGmt,
    this.slug,
    this.status,
    this.type,
    this.link,
    this.title,
    this.content,
    this.excerpt,
    this.author,
    this.featuredMedia,
    this.commentStatus,
    this.pingStatus,
    this.sticky,
    this.template,
    this.format,
    this.meta,
    this.categories,
    this.tags,
    this.yoastHead,
    this.yoastHeadJson,
    this.links,
  });

  final int? id;
  final DateTime? date;
  final DateTime? dateGmt;
  final Guid? guid;
  final DateTime? modified;
  final DateTime? modifiedGmt;
  final String? slug;
  final String? status;
  final String? type;
  final String? link;
  final Guid? title;
  final Content? content;
  final Content? excerpt;
  final int? author;
  final int? featuredMedia;
  final String? commentStatus;
  final String? pingStatus;
  final bool? sticky;
  final String? template;
  final String? format;
  final List<dynamic>? meta;
  final List<int>? categories;
  final List<int>? tags;
  final String? yoastHead;
  final YoastHeadJson? yoastHeadJson;
  final Links? links;

  factory BlogModel.fromRawJson(String str) =>
      BlogModel.fromJson(json.decode(str));

  factory BlogModel.fromJson(Map<String, dynamic> json) => BlogModel(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        dateGmt: DateTime.parse(json["date_gmt"]),
        guid: Guid.fromJson(json["guid"]),
        modified: DateTime.parse(json["modified"]),
        modifiedGmt: DateTime.parse(json["modified_gmt"]),
        slug: json["slug"],
        status: json["status"],
        type: json["type"],
        link: json["link"],
        title: Guid.fromJson(json["title"]),
        content: Content.fromJson(json["content"]),
        excerpt: Content.fromJson(json["excerpt"]),
        author: json["author"],
        featuredMedia: json["featured_media"],
        commentStatus: json["comment_status"],
        pingStatus: json["ping_status"],
        sticky: json["sticky"],
        template: json["template"],
        format: json["format"],
        meta: List<dynamic>.from(json["meta"].map((x) => x)),
        categories: List<int>.from(json["categories"].map((x) => x)),
        tags: List<int>.from(json["tags"].map((x) => x)),
        yoastHead: json["yoast_head"],
        yoastHeadJson: YoastHeadJson?.fromJson(json["yoast_head_json"]),
        links: Links.fromJson(json["_links"]),
      );
}

class Content {
  Content({
    this.rendered,
    this.protected,
  });

  final String? rendered;
  final bool? protected;

  factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        rendered: json["rendered"],
        protected: json["protected"],
      );
}

class Guid {
  Guid({
    this.rendered,
  });

  final String? rendered;

  factory Guid.fromRawJson(String str) => Guid.fromJson(json.decode(str));

  factory Guid.fromJson(Map<String, dynamic> json) => Guid(
        rendered: json["rendered"],
      );
}

class Links {
  Links({
    this.self,
    this.collection,
    this.about,
    this.author,
    this.replies,
    this.versionHistory,
    this.predecessorVersion,
    this.wpFeaturedmedia,
    this.wpAttachment,
    this.wpTerm,
    this.curies,
  });

  final List<About>? self;
  final List<About>? collection;
  final List<About>? about;
  final List<AuthorElement>? author;
  final List<AuthorElement>? replies;
  final List<VersionHistory>? versionHistory;
  final List<PredecessorVersion>? predecessorVersion;
  final List<AuthorElement>? wpFeaturedmedia;
  final List<About>? wpAttachment;
  final List<WpTerm>? wpTerm;
  final List<Cury>? curies;

  factory Links.fromRawJson(String str) => Links.fromJson(json.decode(str));

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        self: List<About>.from(json["self"].map((x) => About.fromJson(x))),
        collection:
            List<About>.from(json["collection"].map((x) => About.fromJson(x))),
        about: List<About>.from(json["about"].map((x) => About.fromJson(x))),
        author: List<AuthorElement>.from(
            json["author"].map((x) => AuthorElement.fromJson(x))),
        replies: List<AuthorElement>.from(
            json["replies"].map((x) => AuthorElement.fromJson(x))),
        versionHistory: List<VersionHistory>.from(
            json["version-history"].map((x) => VersionHistory.fromJson(x))),
        predecessorVersion: List<PredecessorVersion>.from(
            json["predecessor-version"]
                .map((x) => PredecessorVersion.fromJson(x))),
        wpFeaturedmedia: List<AuthorElement>.from(
            json["wp:featuredmedia"].map((x) => AuthorElement.fromJson(x))),
        wpAttachment: List<About>.from(
            json["wp:attachment"].map((x) => About.fromJson(x))),
        wpTerm:
            List<WpTerm>.from(json["wp:term"].map((x) => WpTerm.fromJson(x))),
        curies: List<Cury>.from(json["curies"].map((x) => Cury.fromJson(x))),
      );
}

class About {
  About({
    this.href,
  });

  final String? href;

  factory About.fromRawJson(String str) => About.fromJson(json.decode(str));

  factory About.fromJson(Map<String, dynamic> json) => About(
        href: json["href"],
      );
}

class AuthorElement {
  AuthorElement({
    this.embeddable,
    this.href,
  });

  final bool? embeddable;
  final String? href;

  factory AuthorElement.fromRawJson(String str) =>
      AuthorElement.fromJson(json.decode(str));

  factory AuthorElement.fromJson(Map<String, dynamic> json) => AuthorElement(
        embeddable: json["embeddable"],
        href: json["href"],
      );
}

class Cury {
  Cury({
    this.name,
    this.href,
    this.templated,
  });

  final String? name;
  final String? href;
  final bool? templated;

  factory Cury.fromRawJson(String str) => Cury.fromJson(json.decode(str));

  factory Cury.fromJson(Map<String, dynamic> json) => Cury(
        name: json["name"],
        href: json["href"],
        templated: json["templated"],
      );
}

class PredecessorVersion {
  PredecessorVersion({
    this.id,
    this.href,
  });

  final int? id;
  final String? href;

  factory PredecessorVersion.fromRawJson(String str) =>
      PredecessorVersion.fromJson(json.decode(str));

  factory PredecessorVersion.fromJson(Map<String, dynamic> json) =>
      PredecessorVersion(
        id: json["id"],
        href: json["href"],
      );
}

class VersionHistory {
  VersionHistory({
    this.count,
    this.href,
  });

  final int? count;
  final String? href;

  factory VersionHistory.fromRawJson(String str) =>
      VersionHistory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VersionHistory.fromJson(Map<String, dynamic> json) => VersionHistory(
        count: json["count"],
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "href": href,
      };
}

class WpTerm {
  WpTerm({
    this.taxonomy,
    this.embeddable,
    this.href,
  });

  final String? taxonomy;
  final bool? embeddable;
  final String? href;

  factory WpTerm.fromRawJson(String str) => WpTerm.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WpTerm.fromJson(Map<String, dynamic> json) => WpTerm(
        taxonomy: json["taxonomy"],
        embeddable: json["embeddable"],
        href: json["href"],
      );

  Map<String, dynamic> toJson() => {
        "taxonomy": taxonomy,
        "embeddable": embeddable,
        "href": href,
      };
}

class YoastHeadJson {
  YoastHeadJson({
    this.title,
    this.description,
    this.robots,
    this.canonical,
    this.ogLocale,
    this.ogType,
    this.ogTitle,
    this.ogDescription,
    this.ogUrl,
    this.ogSiteName,
    this.articlePublishedTime,
    this.ogImage,
    this.twitterCard,
    this.twitterMisc,
    this.schema,
  });

  final String? title;
  final String? description;
  final Robots? robots;
  final String? canonical;
  final String? ogLocale;
  final String? ogType;
  final String? ogTitle;
  final String? ogDescription;
  final String? ogUrl;
  final String? ogSiteName;
  final DateTime? articlePublishedTime;
  final List<OgImage>? ogImage;
  final String? twitterCard;
  final TwitterMisc? twitterMisc;
  final Schema? schema;

  factory YoastHeadJson.fromRawJson(String str) =>
      YoastHeadJson.fromJson(json.decode(str));

  factory YoastHeadJson.fromJson(Map<String, dynamic> json) => YoastHeadJson(
        title: json["title"],
        description: json["description"],
        robots: Robots.fromJson(json["robots"]),
        canonical: json["canonical"],
        ogLocale: json["og_locale"],
        ogType: json["og_type"],
        ogTitle: json["og_title"],
        ogDescription: json["og_description"],
        ogUrl: json["og_url"],
        ogSiteName: json["og_site_name"],
        articlePublishedTime: DateTime.parse(json["article_published_time"]),
        ogImage: List<OgImage>.from(
            json["og_image"].map((x) => OgImage.fromJson(x))),
        twitterCard: json["twitter_card"],
        twitterMisc: TwitterMisc.fromJson(json["twitter_misc"]),
        schema: Schema.fromJson(json["schema"]),
      );
}

class OgImage {
  OgImage({
    this.width,
    this.height,
    this.url,
    this.type,
  });

  final int? width;
  final int? height;
  final String? url;
  final String? type;

  factory OgImage.fromRawJson(String str) => OgImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OgImage.fromJson(Map<String, dynamic> json) => OgImage(
        width: json["width"],
        height: json["height"],
        url: json["url"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "url": url,
        "type": type,
      };
}

class Robots {
  Robots({
    this.index,
    this.follow,
    this.maxSnippet,
    this.maxImagePreview,
    this.maxVideoPreview,
  });

  final String? index;
  final String? follow;
  final String? maxSnippet;
  final String? maxImagePreview;
  final String? maxVideoPreview;

  factory Robots.fromRawJson(String str) => Robots.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Robots.fromJson(Map<String, dynamic> json) => Robots(
        index: json["index"],
        follow: json["follow"],
        maxSnippet: json["max-snippet"],
        maxImagePreview: json["max-image-preview"],
        maxVideoPreview: json["max-video-preview"],
      );

  Map<String, dynamic> toJson() => {
        "index": index,
        "follow": follow,
        "max-snippet": maxSnippet,
        "max-image-preview": maxImagePreview,
        "max-video-preview": maxVideoPreview,
      };
}

class Schema {
  Schema({
    this.context,
    this.graph,
  });

  final String? context;
  final List<Graph>? graph;

  factory Schema.fromRawJson(String str) => Schema.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Schema.fromJson(Map<String, dynamic> json) => Schema(
        context: json["@context"],
        graph: List<Graph>.from(json["@graph"].map((x) => Graph.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "@context": context,
        "@graph": List<dynamic>.from(graph!.map((x) => x.toJson())),
      };
}

class Graph {
  Graph({
    this.type,
    this.id,
    this.name,
    this.url,
    this.sameAs,
    this.logo,
    this.image,
    this.description,
    this.publisher,
    this.potentialAction,
    this.inLanguage,
    this.contentUrl,
    this.width,
    this.height,
    this.isPartOf,
    this.primaryImageOfPage,
    this.datePublished,
    this.dateModified,
    this.breadcrumb,
    this.itemListElement,
    this.author,
    this.headline,
    this.mainEntityOfPage,
    this.wordCount,
    this.commentCount,
    this.thumbnailUrl,
    this.keywords,
    this.articleSection,
  });

  final String? type;
  final String? id;
  final String? name;
  final String? url;
  final List<String>? sameAs;
  final Image? logo;
  final Image? image;
  final String? description;
  final BreadcrumbClass? publisher;
  final List<PotentialAction>? potentialAction;
  final String? inLanguage;
  final String? contentUrl;
  final int? width;
  final int? height;
  final BreadcrumbClass? isPartOf;
  final BreadcrumbClass? primaryImageOfPage;
  final DateTime? datePublished;
  final DateTime? dateModified;
  final BreadcrumbClass? breadcrumb;
  final List<ItemListElement>? itemListElement;
  final BreadcrumbClass? author;
  final String? headline;
  final BreadcrumbClass? mainEntityOfPage;
  final int? wordCount;
  final int? commentCount;
  final String? thumbnailUrl;
  final List<String>? keywords;
  final List<String>? articleSection;

  factory Graph.fromRawJson(String str) => Graph.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Graph.fromJson(Map<String, dynamic> json) => Graph(
        type: json["@type"],
        id: json["@id"],
        name: json["name"] == null ? null : json["name"],
        url: json["url"] == null ? null : json["url"],
        sameAs: json["sameAs"] == null
            ? null
            : List<String>.from(json["sameAs"].map((x) => x)),
        logo: json["logo"] == null ? null : Image.fromJson(json["logo"]),
        image: json["image"] == null ? null : Image.fromJson(json["image"]),
        description: json["description"] == null ? null : json["description"],
        publisher: json["publisher"] == null
            ? null
            : BreadcrumbClass.fromJson(json["publisher"]),
        potentialAction: json["potentialAction"] == null
            ? null
            : List<PotentialAction>.from(json["potentialAction"]
                .map((x) => PotentialAction.fromJson(x))),
        inLanguage: json["inLanguage"] == null ? null : json["inLanguage"],
        contentUrl: json["contentUrl"] == null ? null : json["contentUrl"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        isPartOf: json["isPartOf"] == null
            ? null
            : BreadcrumbClass.fromJson(json["isPartOf"]),
        primaryImageOfPage: json["primaryImageOfPage"] == null
            ? null
            : BreadcrumbClass.fromJson(json["primaryImageOfPage"]),
        datePublished: json["datePublished"] == null
            ? null
            : DateTime.parse(json["datePublished"]),
        dateModified: json["dateModified"] == null
            ? null
            : DateTime.parse(json["dateModified"]),
        breadcrumb: json["breadcrumb"] == null
            ? null
            : BreadcrumbClass.fromJson(json["breadcrumb"]),
        itemListElement: json["itemListElement"] == null
            ? null
            : List<ItemListElement>.from(json["itemListElement"]
                .map((x) => ItemListElement.fromJson(x))),
        author: json["author"] == null
            ? null
            : BreadcrumbClass.fromJson(json["author"]),
        headline: json["headline"] == null ? null : json["headline"],
        mainEntityOfPage: json["mainEntityOfPage"] == null
            ? null
            : BreadcrumbClass.fromJson(json["mainEntityOfPage"]),
        wordCount: json["wordCount"] == null ? null : json["wordCount"],
        commentCount:
            json["commentCount"] == null ? null : json["commentCount"],
        thumbnailUrl:
            json["thumbnailUrl"] == null ? null : json["thumbnailUrl"],
        keywords: json["keywords"] == null
            ? null
            : List<String>.from(json["keywords"].map((x) => x)),
        articleSection: json["articleSection"] == null
            ? null
            : List<String>.from(json["articleSection"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "@id": id,
        "name": name == null ? null : name,
        "url": url == null ? null : url,
        "sameAs":
            sameAs == null ? null : List<dynamic>.from(sameAs!.map((x) => x)),
        "logo": logo == null ? null : logo?.toJson(),
        "image": image == null ? null : image?.toJson(),
        "description": description == null ? null : description,
        "publisher": publisher == null ? null : publisher?.toJson(),
        "potentialAction": potentialAction == null
            ? null
            : List<dynamic>.from(potentialAction!.map((x) => x.toJson())),
        "inLanguage": inLanguage == null ? null : inLanguage,
        "contentUrl": contentUrl == null ? null : contentUrl,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "isPartOf": isPartOf == null ? null : isPartOf?.toJson(),
        "primaryImageOfPage":
            primaryImageOfPage == null ? null : primaryImageOfPage?.toJson(),
        "datePublished":
            datePublished == null ? null : datePublished?.toIso8601String(),
        "dateModified":
            dateModified == null ? null : dateModified?.toIso8601String(),
        "breadcrumb": breadcrumb == null ? null : breadcrumb?.toJson(),
        "itemListElement": itemListElement == null
            ? null
            : List<dynamic>.from(itemListElement!.map((x) => x.toJson())),
        "author": author == null ? null : author?.toJson(),
        "headline": headline == null ? null : headline,
        "mainEntityOfPage":
            mainEntityOfPage == null ? null : mainEntityOfPage?.toJson(),
        "wordCount": wordCount == null ? null : wordCount,
        "commentCount": commentCount == null ? null : commentCount,
        "thumbnailUrl": thumbnailUrl == null ? null : thumbnailUrl,
        "keywords": keywords == null
            ? null
            : List<dynamic>.from(keywords!.map((x) => x)),
        "articleSection": articleSection == null
            ? null
            : List<dynamic>.from(articleSection!.map((x) => x)),
      };
}

class BreadcrumbClass {
  BreadcrumbClass({
    this.id,
  });

  final String? id;

  factory BreadcrumbClass.fromRawJson(String str) =>
      BreadcrumbClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BreadcrumbClass.fromJson(Map<String, dynamic> json) =>
      BreadcrumbClass(
        id: json["@id"],
      );

  Map<String, dynamic> toJson() => {
        "@id": id,
      };
}

class Image {
  Image({
    this.id,
    this.type,
    this.inLanguage,
    this.url,
    this.contentUrl,
    this.caption,
    this.width,
    this.height,
  });

  final String? id;
  final String? type;
  final String? inLanguage;
  final String? url;
  final String? contentUrl;
  final String? caption;
  final int? width;
  final int? height;

  factory Image.fromRawJson(String str) => Image.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["@id"],
        type: json["@type"] == null ? null : json["@type"],
        inLanguage: json["inLanguage"] == null ? null : json["inLanguage"],
        url: json["url"] == null ? null : json["url"],
        contentUrl: json["contentUrl"] == null ? null : json["contentUrl"],
        caption: json["caption"] == null ? null : json["caption"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
      );

  Map<String, dynamic> toJson() => {
        "@id": id,
        "@type": type == null ? null : type,
        "inLanguage": inLanguage == null ? null : inLanguage,
        "url": url == null ? null : url,
        "contentUrl": contentUrl == null ? null : contentUrl,
        "caption": caption == null ? null : caption,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
      };
}

class ItemListElement {
  ItemListElement({
    this.type,
    this.position,
    this.name,
    this.item,
  });

  final String? type;
  final int? position;
  final String? name;
  final String? item;

  factory ItemListElement.fromRawJson(String str) =>
      ItemListElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemListElement.fromJson(Map<String, dynamic> json) =>
      ItemListElement(
        type: json["@type"],
        position: json["position"],
        name: json["name"],
        item: json["item"] == null ? null : json["item"],
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "position": position,
        "name": name,
        "item": item == null ? null : item,
      };
}

class PotentialAction {
  PotentialAction({
    this.type,
    this.target,
    this.queryInput,
    this.name,
  });

  final String? type;
  final dynamic target;
  final String? queryInput;
  final String? name;

  factory PotentialAction.fromRawJson(String str) =>
      PotentialAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PotentialAction.fromJson(Map<String, dynamic> json) =>
      PotentialAction(
        type: json["@type"],
        target: json["target"],
        queryInput: json["query-input"] == null ? null : json["query-input"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "target": target,
        "query-input": queryInput == null ? null : queryInput,
        "name": name == null ? null : name,
      };
}

class TargetClass {
  TargetClass({
    this.type,
    this.urlTemplate,
  });

  final String? type;
  final String? urlTemplate;

  factory TargetClass.fromRawJson(String str) =>
      TargetClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TargetClass.fromJson(Map<String, dynamic> json) => TargetClass(
        type: json["@type"],
        urlTemplate: json["urlTemplate"],
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "urlTemplate": urlTemplate,
      };
}

class TwitterMisc {
  TwitterMisc({
    this.empty,
    this.twitterMisc,
  });

  final String? empty;
  final String? twitterMisc;

  factory TwitterMisc.fromRawJson(String str) =>
      TwitterMisc.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TwitterMisc.fromJson(Map<String, dynamic> json) => TwitterMisc(
        empty: json["كُتب بواسطة"],
        twitterMisc: json["وقت القراءة المُقدّر"],
      );

  Map<String, dynamic> toJson() => {
        "كُتب بواسطة": empty,
        "وقت القراءة المُقدّر": twitterMisc,
      };
}
