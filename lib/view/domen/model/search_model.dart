// To parse this JSON data, do
//
//     final search = searchFromJson(jsonString);

import 'dart:convert';

Search searchFromJson(String str) => Search.fromJson(json.decode(str));

String searchToJson(Search data) => json.encode(data.toJson());

class Search {
    Search({
        this.code,
        required this.body,
        required this.status,
        required this.statusCode,
    });

    dynamic code;
    Body body;
    String status;
    int statusCode;

    factory Search.fromJson(Map<String, dynamic> json) => Search(
        code: json["code"],
        body: Body.fromJson(json["body"]),
        status: json["status"],
        statusCode: json["statusCode"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "body": body.toJson(),
        "status": status,
        "statusCode": statusCode,
    };
}

class Body {
    Body({
        required this.places,
        required this.status,
        this.clearClientCache,
        required this.hashtags,
        required this.rankToken,
        required this.hasMore,
        required this.users,
    });

    List<PlaceElement> places;
    String status;
    dynamic clearClientCache;
    List<HashtagElement> hashtags;
    String rankToken;
    bool hasMore;
    List<UserElement> users;

    factory Body.fromJson(Map<String, dynamic> json) => Body(
        places: List<PlaceElement>.from(json["places"].map((x) => PlaceElement.fromJson(x))),
        status: json["status"],
        clearClientCache: json["clear_client_cache"],
        hashtags: List<HashtagElement>.from(json["hashtags"].map((x) => HashtagElement.fromJson(x))),
        rankToken: json["rank_token"],
        hasMore: json["has_more"],
        users: List<UserElement>.from(json["users"].map((x) => UserElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "places": List<dynamic>.from(places.map((x) => x.toJson())),
        "status": status,
        "clear_client_cache": clearClientCache,
        "hashtags": List<dynamic>.from(hashtags.map((x) => x.toJson())),
        "rank_token": rankToken,
        "has_more": hasMore,
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
    };
}

class HashtagElement {
    HashtagElement({
        required this.hashtag,
        required this.position,
    });

    HashtagHashtag hashtag;
    int position;

    factory HashtagElement.fromJson(Map<String, dynamic> json) => HashtagElement(
        hashtag: HashtagHashtag.fromJson(json["hashtag"]),
        position: json["position"],
    );

    Map<String, dynamic> toJson() => {
        "hashtag": hashtag.toJson(),
        "position": position,
    };
}

class HashtagHashtag {
    HashtagHashtag({
        required this.searchResultSubtitle,
        required this.id,
        required this.mediaCount,
        required this.name,
        required this.useDefaultAvatar,
    });

    String searchResultSubtitle;
    double id;
    int mediaCount;
    String name;
    bool useDefaultAvatar;

    factory HashtagHashtag.fromJson(Map<String, dynamic> json) => HashtagHashtag(
        searchResultSubtitle: json["search_result_subtitle"],
        id: json["id"]?.toDouble(),
        mediaCount: json["media_count"],
        name: json["name"],
        useDefaultAvatar: json["use_default_avatar"],
    );

    Map<String, dynamic> toJson() => {
        "search_result_subtitle": searchResultSubtitle,
        "id": id,
        "media_count": mediaCount,
        "name": name,
        "use_default_avatar": useDefaultAvatar,
    };
}

class PlaceElement {
    PlaceElement({
        required this.position,
        required this.place,
    });

    int position;
    PlacePlace place;

    factory PlaceElement.fromJson(Map<String, dynamic> json) => PlaceElement(
        position: json["position"],
        place: PlacePlace.fromJson(json["place"]),
    );

    Map<String, dynamic> toJson() => {
        "position": position,
        "place": place.toJson(),
    };
}

class PlacePlace {
    PlacePlace({
        required this.mediaBundles,
        required this.title,
        required this.subtitle,
        required this.location,
        required this.slug,
    });

    MediaBundles mediaBundles;
    String title;
    String subtitle;
    Location location;
    String slug;

    factory PlacePlace.fromJson(Map<String, dynamic> json) => PlacePlace(
        mediaBundles: MediaBundles.fromJson(json["media_bundles"]),
        title: json["title"],
        subtitle: json["subtitle"],
        location: Location.fromJson(json["location"]),
        slug: json["slug"],
    );

    Map<String, dynamic> toJson() => {
        "media_bundles": mediaBundles.toJson(),
        "title": title,
        "subtitle": subtitle,
        "location": location.toJson(),
        "slug": slug,
    };
}

class Location {
    Location({
        required this.pk,
        required this.shortName,
        required this.hasViewerSaved,
        required this.name,
        required this.externalSource,
        required this.lng,
        required this.address,
        required this.city,
        required this.lat,
        required this.facebookPlacesId,
    });

    String pk;
    String shortName;
    bool hasViewerSaved;
    String name;
    String externalSource;
    double lng;
    String address;
    String city;
    double lat;
    int facebookPlacesId;

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        pk: json["pk"],
        shortName: json["short_name"],
        hasViewerSaved: json["has_viewer_saved"],
        name: json["name"],
        externalSource: json["external_source"],
        lng: json["lng"]?.toDouble(),
        address: json["address"],
        city: json["city"],
        lat: json["lat"]?.toDouble(),
        facebookPlacesId: json["facebook_places_id"],
    );

    Map<String, dynamic> toJson() => {
        "pk": pk,
        "short_name": shortName,
        "has_viewer_saved": hasViewerSaved,
        "name": name,
        "external_source": externalSource,
        "lng": lng,
        "address": address,
        "city": city,
        "lat": lat,
        "facebook_places_id": facebookPlacesId,
    };
}

class MediaBundles {
    MediaBundles();

    factory MediaBundles.fromJson(Map<String, dynamic> json) => MediaBundles(
    );

    Map<String, dynamic> toJson() => {
    };
}

class UserElement {
    UserElement({
        required this.user,
        required this.position,
    });

    UserUser user;
    int position;

    factory UserElement.fromJson(Map<String, dynamic> json) => UserElement(
        user: UserUser.fromJson(json["user"]),
        position: json["position"],
    );

    Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "position": position,
    };
}

class UserUser {
    UserUser({
        required this.isPrivate,
        required this.pk,
        required this.hasOptEligibleShop,
        required this.fullName,
        required this.profilePicId,
        required this.username,
        required this.hasAnonymousProfilePicture,
        required this.pkId,
        required this.shouldShowCategory,
        this.liveBroadcastId,
        required this.latestReelMedia,
        required this.accountBadges,
        required this.profilePicUrl,
        required this.isVerified,
    });

    bool isPrivate;
    String pk;
    bool hasOptEligibleShop;
    String fullName;
    String profilePicId;
    String username;
    bool hasAnonymousProfilePicture;
    String pkId;
    bool shouldShowCategory;
    dynamic liveBroadcastId;
    int latestReelMedia;
    MediaBundles accountBadges;
    String profilePicUrl;
    bool isVerified;

    factory UserUser.fromJson(Map<String, dynamic> json) => UserUser(
        isPrivate: json["is_private"],
        pk: json["pk"],
        hasOptEligibleShop: json["has_opt_eligible_shop"],
        fullName: json["full_name"],
        profilePicId: json["profile_pic_id"],
        username: json["username"],
        hasAnonymousProfilePicture: json["has_anonymous_profile_picture"],
        pkId: json["pk_id"],
        shouldShowCategory: json["should_show_category"],
        liveBroadcastId: json["live_broadcast_id"],
        latestReelMedia: json["latest_reel_media"],
        accountBadges: MediaBundles.fromJson(json["account_badges"]),
        profilePicUrl: json["profile_pic_url"],
        isVerified: json["is_verified"],
    );

    Map<String, dynamic> toJson() => {
        "is_private": isPrivate,
        "pk": pk,
        "has_opt_eligible_shop": hasOptEligibleShop,
        "full_name": fullName,
        "profile_pic_id": profilePicId,
        "username": username,
        "has_anonymous_profile_picture": hasAnonymousProfilePicture,
        "pk_id": pkId,
        "should_show_category": shouldShowCategory,
        "live_broadcast_id": liveBroadcastId,
        "latest_reel_media": latestReelMedia,
        "account_badges": accountBadges.toJson(),
        "profile_pic_url": profilePicUrl,
        "is_verified": isVerified,
    };
}
