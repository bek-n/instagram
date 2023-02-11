import 'dart:convert';

Singleuser singleuserFromJson(String str) => Singleuser.fromJson(json.decode(str));

String singleuserToJson(Singleuser data) => json.encode(data.toJson());

class Singleuser {
    Singleuser({
        this.code,
        required this.body,
        required this.status,
        required this.statusCode,
    });

    dynamic code;
    Body? body;
    String? status;
    int? statusCode;

    factory Singleuser.fromJson(Map json) => Singleuser(
        code: json["code"],
        body: json["body"] != null ? Body.fromJson(json["body"]) : null,
        status: json["status"],
        statusCode: json["statusCode"],
    );

    Map toJson() => {
        "code": code,
        "body": body?.toJson(),
        "status": status,
        "statusCode": statusCode,
    };
}

class Body {
    Body({
        required this.edges,
        required this.count,
        required this.pageInfo,
    });

    List<BodyEdge> edges;
    int count;
    PageInfo? pageInfo;

    factory Body.fromJson(Map json) => Body(
        edges: List<BodyEdge>.from(json["edges"].map((x) => BodyEdge.fromJson(x))),
        count: json["count"],
        pageInfo:json["page_info"] != null ? PageInfo.fromJson(json["page_info"]) : null,
    );

    Map<String, dynamic> toJson() => {
        "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
        "count": count,
        "page_info": pageInfo?.toJson(),
    };
}

class BodyEdge {
    BodyEdge({
        required this.node,
    });

    PurpleNode? node;

    factory BodyEdge.fromJson(Map json) => BodyEdge(
        node:json["node"] != null ? PurpleNode.fromJson(json["node"]) : null,
    );

    Map  toJson() => {
        "node": node?.toJson(),
    };
}

class PurpleNode {
    PurpleNode({
        required this.displayUrl,
        this.edgeSidecarToChildren,
        required this.dimensions,
        required this.takenAtTimestamp,
        this.gatingInfo,
        required this.owner,
        required this.thumbnailSrc,
        required this.viewerCanReshare,
        required this.viewerHasSaved,
        required this.edgeMediaPreviewLike,
        required this.isVideo,
        required this.thumbnailResources,
        required this.trackingToken,
        required this.edgeMediaToSponsorUser,
        required this.viewerHasSavedToCollection,
        this.accessibilityCaption,
        required this.commentsDisabled,
        required this.shortcode,
        required this.edgeMediaToComment,
        required this.viewerHasLiked,
        required this.displayResources,
        required this.id,
        required this.shouldLogClientEvent,
        required this.viewerInPhotoOfYou,
        required this.edgeMediaToCaption,
        this.mediaPreview,
        required this.typename,
        this.location,
        required this.edgeMediaToTaggedUser,
        this.dashInfo,
        this.videoUrl,
        this.videoViewCount,
    });

    String displayUrl;
    EdgeSidecarToChildren? edgeSidecarToChildren;
    Dimensions? dimensions;
    int takenAtTimestamp;
    dynamic gatingInfo;
    SponsorClass? owner;
    String thumbnailSrc;
    bool viewerCanReshare;
    bool viewerHasSaved;
    EdgeMediaPreviewLike? edgeMediaPreviewLike;
    bool isVideo;
    List<Resource> thumbnailResources;
    String trackingToken;
    EdgeMediaToSponsorUser? edgeMediaToSponsorUser;
    bool viewerHasSavedToCollection;
    dynamic accessibilityCaption;
    bool commentsDisabled;
    String shortcode;
    EdgeMediaToComment? edgeMediaToComment;
    bool viewerHasLiked;
    List<Resource> displayResources;
    String id;
    bool shouldLogClientEvent;
    bool viewerInPhotoOfYou;
    EdgeMediaToCaption? edgeMediaToCaption;
    String? mediaPreview;
    String typename;
    Location? location;
    EdgeMediaToTaggedUser? edgeMediaToTaggedUser;
    DashInfo? dashInfo;
    String? videoUrl;
    int? videoViewCount;

    factory PurpleNode.fromJson(Map  json) => PurpleNode(
        displayUrl: json["display_url"],
        edgeSidecarToChildren: json["edge_sidecar_to_children"] == null ? null : EdgeSidecarToChildren.fromJson(json["edge_sidecar_to_children"]),
        dimensions: json["dimensions"] != null ? Dimensions.fromJson(json["dimensions"]) : null,
        takenAtTimestamp: json["taken_at_timestamp"],
        gatingInfo: json["gating_info"],
        owner: json["owner"] != null ? SponsorClass.fromJson(json["owner"]) : null,
        thumbnailSrc: json["thumbnail_src"],
        viewerCanReshare: json["viewer_can_reshare"],
        viewerHasSaved: json["viewer_has_saved"],
        edgeMediaPreviewLike: json["edge_media_preview_like"] != null ? EdgeMediaPreviewLike.fromJson(json["edge_media_preview_like"]) : null,
        isVideo: json["is_video"],
        thumbnailResources: List<Resource>.from(json["thumbnail_resources"].map((x) => Resource.fromJson(x))),
        trackingToken: json["tracking_token"],
        edgeMediaToSponsorUser:json["edge_media_to_sponsor_user"] != null ? EdgeMediaToSponsorUser.fromJson(json["edge_media_to_sponsor_user"]) : null,
        viewerHasSavedToCollection: json["viewer_has_saved_to_collection"],
        accessibilityCaption: json["accessibility_caption"],
        commentsDisabled: json["comments_disabled"],
        shortcode: json["shortcode"],
        edgeMediaToComment: json["edge_media_to_comment"] != null ? EdgeMediaToComment.fromJson(json["edge_media_to_comment"]) : null,
        viewerHasLiked: json["viewer_has_liked"],
        displayResources: List<Resource>.from(json["display_resources"].map((x) => Resource.fromJson(x))),
        id: json["id"],
        shouldLogClientEvent: json["should_log_client_event"],
        viewerInPhotoOfYou: json["viewer_in_photo_of_you"],
        edgeMediaToCaption:json["edge_media_to_caption"] != null ? EdgeMediaToCaption.fromJson(json["edge_media_to_caption"]) : null,
        mediaPreview: json["media_preview"],
        typename: json["__typename"],
        location: json["location"] == null ? null : Location.fromJson(json["location"]),
        edgeMediaToTaggedUser: json["edge_media_to_tagged_user"] != null ? EdgeMediaToTaggedUser.fromJson(json["edge_media_to_tagged_user"]) : null,
        dashInfo: json["dash_info"] == null ? null : DashInfo.fromJson(json["dash_info"]),
        videoUrl: json["video_url"],
        videoViewCount: json["video_view_count"],
    );

    Map toJson() => {
        "display_url": displayUrl,
        "edge_sidecar_to_children": edgeSidecarToChildren?.toJson(),
        "dimensions": dimensions?.toJson(),
        "taken_at_timestamp": takenAtTimestamp,
        "gating_info": gatingInfo,
        "owner": owner?.toJson(),
        "thumbnail_src": thumbnailSrc,
        "viewer_can_reshare": viewerCanReshare,
        "viewer_has_saved": viewerHasSaved,
        "edge_media_preview_like": edgeMediaPreviewLike?.toJson(),
        "is_video": isVideo,
        "thumbnail_resources": List<dynamic>.from(thumbnailResources.map((x) => x.toJson())),
        "tracking_token": trackingToken,
        "edge_media_to_sponsor_user": edgeMediaToSponsorUser?.toJson(),
        "viewer_has_saved_to_collection": viewerHasSavedToCollection,
        "accessibility_caption": accessibilityCaption,
        "comments_disabled": commentsDisabled,
        "shortcode": shortcode,
        "edge_media_to_comment": edgeMediaToComment?.toJson(),
        "viewer_has_liked": viewerHasLiked,
        "display_resources": List<dynamic>.from(displayResources.map((x) => x.toJson())),
        "id": id,
        "should_log_client_event": shouldLogClientEvent,
        "viewer_in_photo_of_you": viewerInPhotoOfYou,
        "edge_media_to_caption": edgeMediaToCaption?.toJson(),
        "media_preview": mediaPreview,
        "__typename": typename,
        "location": location?.toJson(),
        "edge_media_to_tagged_user": edgeMediaToTaggedUser?.toJson(),
        "dash_info": dashInfo?.toJson(),
        "video_url": videoUrl,
        "video_view_count": videoViewCount,
    };
}

class DashInfo {
    DashInfo({
        required this.isDashEligible,
        this.videoDashManifest,
        required this.numberOfQualities,
    });

    bool isDashEligible;
    dynamic videoDashManifest;
    int numberOfQualities;

    factory DashInfo.fromJson(Map json) => DashInfo(
        isDashEligible: json["is_dash_eligible"],
        videoDashManifest: json["video_dash_manifest"],
        numberOfQualities: json["number_of_qualities"],
    );

    Map  toJson() => {
        "is_dash_eligible": isDashEligible,
        "video_dash_manifest": videoDashManifest,
        "number_of_qualities": numberOfQualities,
    };
}

class Dimensions {
    Dimensions({
        required this.width,
        required this.height,
    });

    int width;
    int height;

    factory Dimensions.fromJson(Map json) => Dimensions(
        width: json["width"],
        height: json["height"],
    );

    Map toJson() => {
        "width": width,
        "height": height,
    };
}

class Resource {
    Resource({
        required this.configWidth,
        required this.configHeight,
        required this.src,
    });

    num configWidth;
    num configHeight;
    String src;

    factory Resource.fromJson(Map json) => Resource(
        configWidth: json["config_width"],
        configHeight: json["config_height"],
        src: json["src"],
    );

    Map toJson() => {
        "config_width": configWidth,
        "config_height": configHeight,
        "src": src,
    };
}

class EdgeMediaPreviewLike {
    EdgeMediaPreviewLike({
        required this.count,
        required this.edges,
    });

    int count;
    EdgesClass edges;

    factory EdgeMediaPreviewLike.fromJson(Map json) => EdgeMediaPreviewLike(
        count: json["count"],
        edges:  EdgesClass.fromJson(json["edges"]),
    );

    Map toJson() => {
        "count": count,
        "edges": edges.toJson(),
    };
}

class EdgesClass {
    EdgesClass();

    factory EdgesClass.fromJson(Map  json) => EdgesClass(
    );

    Map toJson() => {
    };
}

class EdgeMediaToCaption {
    EdgeMediaToCaption({
        required this.edges,
    });

    List<EdgeMediaToCaptionEdge> edges;

    factory EdgeMediaToCaption.fromJson(Map json) => EdgeMediaToCaption(
        edges: List<EdgeMediaToCaptionEdge>.from(json["edges"].map((x) => EdgeMediaToCaptionEdge.fromJson(x))),
    );

    Map toJson() => {
        "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
    };
}

class EdgeMediaToCaptionEdge {
    EdgeMediaToCaptionEdge({
        required this.node,
    });

    FluffyNode? node;

    factory EdgeMediaToCaptionEdge.fromJson(Map json) => EdgeMediaToCaptionEdge(
        node: json["node"] != null  ? FluffyNode.fromJson(json["node"]) : null,
    );

    Map toJson() => {
        "node": node?.toJson(),
    };
}

class FluffyNode {
    FluffyNode({
        required this.text,
    });

    String text;

    factory FluffyNode.fromJson(Map json) => FluffyNode(
        text: json["text"],
    );

    Map toJson() => {
        "text": text,
    };
}

class EdgeMediaToComment {
    EdgeMediaToComment({
        required this.edges,
        required this.count,
        required this.pageInfo,
    });

    dynamic edges;
    int count;
    PageInfo? pageInfo;

    factory EdgeMediaToComment.fromJson(Map json) => EdgeMediaToComment(
        edges: json["edges"],
        count: json["count"],
        pageInfo:json["page_info"] != null ? PageInfo.fromJson(json["page_info"]) : null,
    );

    Map toJson() => {
        "edges": edges,
        "count": count,
        "page_info": pageInfo?.toJson(),
    };
}

class PurpleEdge {
    PurpleEdge({
        required this.node,
    });

    TentacledNode? node;

    factory PurpleEdge.fromJson(Map json) => PurpleEdge(
        node: json["node"] != null ? TentacledNode.fromJson(json["node"]) : null,
    );

    Map toJson() => {
        "node": node?.toJson(),
    };
}

class TentacledNode {
    TentacledNode({
        required this.didReportAsSpam,
        required this.id,
        required this.viewerHasLiked,
        required this.createdAt,
        required this.owner,
        required this.text,
    });

    bool didReportAsSpam;
    num id;
    bool viewerHasLiked;
    num createdAt;
    UserClass? owner;
    String text;

    factory TentacledNode.fromJson(Map json) => TentacledNode(
        didReportAsSpam: json["did_report_as_spam"],
        id: json["id"],
        viewerHasLiked: json["viewer_has_liked"],
        createdAt: json["created_at"],
        owner: json["owner"] != null ? UserClass.fromJson(json["owner"]) : null ,
        text: json["text"],
    );

    Map toJson() => {
        "did_report_as_spam": didReportAsSpam,
        "id": id,
        "viewer_has_liked": viewerHasLiked,
        "created_at": createdAt,
        "owner": owner?.toJson(),
        "text": text,
    };
}

class UserClass {
    UserClass({
        required this.isVerified,
        required this.username,
        required this.profilePicUrl,
        required this.id,
        this.fullName,
    });

    bool isVerified;
    String username;
    String profilePicUrl;
    num id;
    String? fullName;

    factory UserClass.fromJson(Map json) => UserClass(
        isVerified: json["is_verified"],
        username: json["username"],
        profilePicUrl: json["profile_pic_url"],
        id: json["id"],
        fullName: json["full_name"],
    );

    Map  toJson() => {
        "is_verified": isVerified,
        "username": username,
        "profile_pic_url": profilePicUrl,
        "id": id,
        "full_name": fullName,
    };
}

class PageInfo {
    PageInfo({
        required this.hasNextPage,
        required this.endCursor,
    });

    bool hasNextPage;
    String endCursor;

    factory PageInfo.fromJson(Map json) => PageInfo(
        hasNextPage: json["has_next_page"],
        endCursor: json["end_cursor"],
    );

    Map<String, dynamic> toJson() => {
        "has_next_page": hasNextPage,
        "end_cursor": endCursor,
    };
}

class EdgeMediaToSponsorUser {
    EdgeMediaToSponsorUser({
        required this.edges,
    });

    dynamic edges;

    factory EdgeMediaToSponsorUser.fromJson(Map  json) => EdgeMediaToSponsorUser(
        edges: json["edges"],
    );

    Map toJson() => {
        "edges": edges,
    };
}

class FluffyEdge {
    FluffyEdge({
        required this.node,
    });

    StickyNode? node;

    factory FluffyEdge.fromJson(Map  json) => FluffyEdge(
        node:json["node"] != null ? StickyNode.fromJson(json["node"]) : null,
    );

    Map<String, dynamic> toJson() => {
        "node": node?.toJson(),
    };
}

class StickyNode {
    StickyNode({
        required this.sponsor,
    });

    SponsorClass? sponsor;

    factory StickyNode.fromJson(Map json) => StickyNode(
        sponsor:json["sponsor"] != null ? SponsorClass.fromJson(json["sponsor"]) : null,
    );

    Map  toJson() => {
        "sponsor": sponsor?.toJson(),
    };
}

class SponsorClass {
    SponsorClass({
        required this.username,
        required this.id,
    });

    String username;
    num id;

    factory SponsorClass.fromJson(Map  json) => SponsorClass(
        username: json["username"],
        id: json["id"],
    );

    Map  toJson() => {
        "username": username,
        "id": id,
    };
}

class EdgeMediaToTaggedUser {
    EdgeMediaToTaggedUser({
        required this.edges,
    });

    dynamic edges;

    factory EdgeMediaToTaggedUser.fromJson(Map  json) => EdgeMediaToTaggedUser(
        edges: json["edges"],
    );

    Map toJson() => {
        "edges": edges,
    };
}

class TentacledEdge {
    TentacledEdge({
        required this.node,
    });

    IndigoNode? node;

    factory TentacledEdge.fromJson(Map json) => TentacledEdge(
        node: json["node"] != null ? IndigoNode.fromJson(json["node"]) : null,
    );

    Map  toJson() => {
        "node": node?.toJson(),
    };
}

class IndigoNode {
    IndigoNode({
        required this.y,
        required this.x,
        required this.user,
    });

    double y;
    double x;
    UserClass? user;

    factory IndigoNode.fromJson(Map json) => IndigoNode(
        y: json["y"]?.toDouble(),
        x: json["x"]?.toDouble(),
        user: json["user"] != null ? UserClass.fromJson(json["user"]) : null,
    );

    Map toJson() => {
        "y": y,
        "x": x,
        "user": user?.toJson(),
    };
}

class EdgeSidecarToChildren {
    EdgeSidecarToChildren({
        required this.edges,
    });

    List<EdgeSidecarToChildrenEdge> edges;

    factory EdgeSidecarToChildren.fromJson(Map json) => EdgeSidecarToChildren(
        edges: List<EdgeSidecarToChildrenEdge>.from(json["edges"].map((x) => EdgeSidecarToChildrenEdge.fromJson(x))),
    );

    Map toJson() => {
        "edges": List<dynamic>.from(edges.map((x) => x.toJson())),
    };
}

class EdgeSidecarToChildrenEdge {
    EdgeSidecarToChildrenEdge({
        required this.node,
    });

    IndecentNode? node;

    factory EdgeSidecarToChildrenEdge.fromJson(Map  json) => EdgeSidecarToChildrenEdge(
        node: json["node"] != null ? IndecentNode.fromJson(json["node"]) : null,
    );

    Map toJson() => {
        "node": node?.toJson(),
    };
}

class IndecentNode {
    IndecentNode({
        this.accessibilityCaption,
        required this.displayUrl,
        required this.dimensions,
        required this.displayResources,
        required this.shouldLogClientEvent,
        required this.edgeMediaToTaggedUser,
        required this.id,
        required this.isVideo,
        required this.typename,
        required this.trackingToken,
    });

    dynamic accessibilityCaption;
    String displayUrl;
    Dimensions? dimensions;
    List<Resource> displayResources;
    bool shouldLogClientEvent;
    EdgeMediaToTaggedUser? edgeMediaToTaggedUser;
    num id;
    bool isVideo;
    String typename;
    String trackingToken;

    factory IndecentNode.fromJson(Map  json) => IndecentNode(
        accessibilityCaption: json["accessibility_caption"],
        displayUrl: json["display_url"],
        dimensions:json["dimensions"] != null ? Dimensions.fromJson(json["dimensions"]) : null,
        displayResources: List<Resource>.from(json["display_resources"].map((x) => Resource.fromJson(x))),
        shouldLogClientEvent: json["should_log_client_event"],
        edgeMediaToTaggedUser:json["edge_media_to_tagged_user"] != null ?  EdgeMediaToTaggedUser.fromJson(json["edge_media_to_tagged_user"]) : null,
        id: json["id"],
        isVideo: json["is_video"],
        typename: json["__typename"],
        trackingToken: json["tracking_token"],
    );

    Map toJson() => {
        "accessibility_caption": accessibilityCaption,
        "display_url": displayUrl,
        "dimensions": dimensions?.toJson(),
        "display_resources": List<dynamic>.from(displayResources.map((x) => x.toJson())),
        "should_log_client_event": shouldLogClientEvent,
        "edge_media_to_tagged_user": edgeMediaToTaggedUser?.toJson(),
        "id": id,
        "is_video": isVideo,
        "__typename": typename,
        "tracking_token": trackingToken,
    };
}

class Location {
    Location({
        required this.slug,
        required this.name,
        required this.hasPublicPage,
        required this.id,
    });

    String slug;
    String name;
    bool hasPublicPage;
    String id;

    factory Location.fromJson(Map json) => Location(
        slug: json["slug"],
        name: json["name"],
        hasPublicPage: json["has_public_page"],
        id: json["id"],
    );

    Map toJson() => {
        "slug": slug,
        "name": name,
        "has_public_page": hasPublicPage,
        "id": id,
    };
}
