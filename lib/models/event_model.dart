
class Event {
  List<Content> content;
  String success;

  Event({this.content, this.success});

  Event.fromJson(Map<String, dynamic> json) {
    if (json['content'] != null) {
      content = new List<Content>();
      json['content'].forEach((v) {
        content.add(new Content.fromJson(v));
      });
    }
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.content != null) {
      data['content'] = this.content.map((v) => v.toJson()).toList();
    }
    data['success'] = this.success;
    return data;
  }
}

class Content {
  String contentSlug;
  String campaign;
  String contentId;
  String contentName;
  String contentAuthor;
  String contentPartner;
  String contentDate;
  String contentDateStart;
  String contentDateEnd;
  String contentImage;
  String contentIcon;
  String contentNumViews;
  String contentNumResponses;
  String contentLat;
  String contentLong;
  String contentFeatured;
  String contentFeaturedAlt;
  String contentSocialDescription;
  String contentIntoption1;
  String contentStringoption1;
  String contentStringoption2;
  String contentStringoption3;
  String contentPrivate;
  String bucketIntersect;
  String contentDateLiteralReleased;
  String contentDateLiteralRange;
  String contentDateLiteralEnd;
  String contentDateLiteralUntil;
  String contentDateLiteralDatetime;
  Author author;
  List<Null> children;
  String numChildren;
  List<Null> parents;
  List<Null> metaData;
  List<Buckets> buckets;
  List<Tags> tags;
  List<Actions> actions;
  String userCommented;
  List<VolunteerRecords> volunteerRecords;
  List<Attendees> attendees;

  Content(
      {this.contentSlug,
        this.campaign,
        this.contentId,
        this.contentName,
        this.contentAuthor,
        this.contentPartner,
        this.contentDate,
        this.contentDateStart,
        this.contentDateEnd,
        this.contentImage,
        this.contentIcon,
        this.contentNumViews,
        this.contentNumResponses,
        this.contentLat,
        this.contentLong,
        this.contentFeatured,
        this.contentFeaturedAlt,
        this.contentSocialDescription,
        this.contentIntoption1,
        this.contentStringoption1,
        this.contentStringoption2,
        this.contentStringoption3,
        this.contentPrivate,
        this.bucketIntersect,
        this.contentDateLiteralReleased,
        this.contentDateLiteralRange,
        this.contentDateLiteralEnd,
        this.contentDateLiteralUntil,
        this.contentDateLiteralDatetime,
        this.author,
        this.children,
        this.numChildren,
        this.parents,
        this.metaData,
        this.buckets,
        this.tags,
        this.actions,
        this.userCommented,
        this.volunteerRecords,
        this.attendees});

  Content.fromJson(Map<String, dynamic> json) {
    contentSlug = json['content_slug'];
    campaign = json['campaign'];
    contentId = json['content_id'];
    contentName = json['content_name'];
    contentAuthor = json['content_author'];
    contentPartner = json['content_partner'];
    contentDate = json['content_date'];
    contentDateStart = json['content_date_start'];
    contentDateEnd = json['content_date_end'];
    contentImage = json['content_image'];
    contentIcon = json['content_icon'];
    contentNumViews = json['content_num_views'];
    contentNumResponses = json['content_num_responses'];
    contentLat = json['content_lat'];
    contentLong = json['content_long'];
    contentFeatured = json['content_featured'];
    contentFeaturedAlt = json['content_featured_alt'];
    contentSocialDescription = json['content_social_description'];
    contentIntoption1 = json['content_intoption1'];
    contentStringoption1 = json['content_stringoption1'];
    contentStringoption2 = json['content_stringoption2'];
    contentStringoption3 = json['content_stringoption3'];
    contentPrivate = json['content_private'];
    bucketIntersect = json['bucket_intersect'];
    contentDateLiteralReleased = json['content_date_literal_released'];
    contentDateLiteralRange = json['content_date_literal_range'];
    contentDateLiteralEnd = json['content_date_literal_end'];
    contentDateLiteralUntil = json['content_date_literal_until'];
    contentDateLiteralDatetime = json['content_date_literal_datetime'];
    author =
    json['author'] != null ? new Author.fromJson(json['author']) : null;

    if (json['buckets'] != null) {
      buckets = new List<Buckets>();
      json['buckets'].forEach((v) {
        buckets.add(new Buckets.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      tags = new List<Tags>();
      json['tags'].forEach((v) {
        tags.add(new Tags.fromJson(v));
      });
    }
    if (json['actions'] != null) {
      actions = new List<Actions>();
      json['actions'].forEach((v) {
        actions.add(new Actions.fromJson(v));
      });
    }
    userCommented = json['user_commented'];
    if (json['volunteer_records'] != null) {
      volunteerRecords = new List<VolunteerRecords>();
      json['volunteer_records'].forEach((v) {
        volunteerRecords.add(new VolunteerRecords.fromJson(v));
      });
    }
    if (json['attendees'] != null) {
      attendees = new List<Attendees>();
      json['attendees'].forEach((v) {
        attendees.add(new Attendees.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content_slug'] = this.contentSlug;
    data['campaign'] = this.campaign;
    data['content_id'] = this.contentId;
    data['content_name'] = this.contentName;
    data['content_author'] = this.contentAuthor;
    data['content_partner'] = this.contentPartner;
    data['content_date'] = this.contentDate;
    data['content_date_start'] = this.contentDateStart;
    data['content_date_end'] = this.contentDateEnd;
    data['content_image'] = this.contentImage;
    data['content_icon'] = this.contentIcon;
    data['content_num_views'] = this.contentNumViews;
    data['content_num_responses'] = this.contentNumResponses;
    data['content_lat'] = this.contentLat;
    data['content_long'] = this.contentLong;
    data['content_featured'] = this.contentFeatured;
    data['content_featured_alt'] = this.contentFeaturedAlt;
    data['content_social_description'] = this.contentSocialDescription;
    data['content_intoption1'] = this.contentIntoption1;
    data['content_stringoption1'] = this.contentStringoption1;
    data['content_stringoption2'] = this.contentStringoption2;
    data['content_stringoption3'] = this.contentStringoption3;
    data['content_private'] = this.contentPrivate;
    data['bucket_intersect'] = this.bucketIntersect;
    data['content_date_literal_released'] = this.contentDateLiteralReleased;
    data['content_date_literal_range'] = this.contentDateLiteralRange;
    data['content_date_literal_end'] = this.contentDateLiteralEnd;
    data['content_date_literal_until'] = this.contentDateLiteralUntil;
    data['content_date_literal_datetime'] = this.contentDateLiteralDatetime;
    if (this.author != null) {
      data['author'] = this.author.toJson();
    }

    if (this.buckets != null) {
      data['buckets'] = this.buckets.map((v) => v.toJson()).toList();
    }
    if (this.tags != null) {
      data['tags'] = this.tags.map((v) => v.toJson()).toList();
    }
    if (this.actions != null) {
      data['actions'] = this.actions.map((v) => v.toJson()).toList();
    }
    data['user_commented'] = this.userCommented;
    if (this.volunteerRecords != null) {
      data['volunteer_records'] =
          this.volunteerRecords.map((v) => v.toJson()).toList();
    }
    if (this.attendees != null) {
      data['attendees'] = this.attendees.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Author {
  String userId;
  String userUsername;
  String userFirstname;
  String userLastname;
  String userIcon;
  String userDatecreated;
  String userAvatar;
  List<Dimensions> dimensions;

  Author(
      {this.userId,
        this.userUsername,
        this.userFirstname,
        this.userLastname,
        this.userIcon,
        this.userDatecreated,
        this.userAvatar,
        this.dimensions});

  Author.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userUsername = json['user_username'];
    userFirstname = json['user_firstname'];
    userLastname = json['user_lastname'];
    userIcon = json['user_icon'];
    userDatecreated = json['user_datecreated'];
    userAvatar = json['user_avatar'];
    if (json['dimensions'] != null) {
      dimensions = new List<Dimensions>();
      json['dimensions'].forEach((v) {
        dimensions.add(new Dimensions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_username'] = this.userUsername;
    data['user_firstname'] = this.userFirstname;
    data['user_lastname'] = this.userLastname;
    data['user_icon'] = this.userIcon;
    data['user_datecreated'] = this.userDatecreated;
    data['user_avatar'] = this.userAvatar;
    if (this.dimensions != null) {
      data['dimensions'] = this.dimensions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Dimensions {
  String id;
  String dimensionId;
  String userId;
  String value;

  Dimensions({this.id, this.dimensionId, this.userId, this.value});

  Dimensions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dimensionId = json['dimension_id'];
    userId = json['user_id'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['dimension_id'] = this.dimensionId;
    data['user_id'] = this.userId;
    data['value'] = this.value;
    return data;
  }
}

class Buckets {
  String bucketId;
  String bucketDisplay;
  String bucketName;

  Buckets({this.bucketId, this.bucketDisplay, this.bucketName});

  Buckets.fromJson(Map<String, dynamic> json) {
    bucketId = json['bucket_id'];
    bucketDisplay = json['bucket_display'];
    bucketName = json['bucket_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bucket_id'] = this.bucketId;
    data['bucket_display'] = this.bucketDisplay;
    data['bucket_name'] = this.bucketName;
    return data;
  }
}

class Tags {
  String tagId;
  String tagName;
  String tagScore;
  String tagType;
  String tagImage;
  String contentId;
  String typeName;

  Tags(
      {this.tagId,
        this.tagName,
        this.tagScore,
        this.tagType,
        this.tagImage,
        this.contentId,
        this.typeName});

  Tags.fromJson(Map<String, dynamic> json) {
    tagId = json['tag_id'];
    tagName = json['tag_name'];
    tagScore = json['tag_score'];
    tagType = json['tag_type'];
    tagImage = json['tag_image'];
    contentId = json['content_id'];
    typeName = json['type_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tag_id'] = this.tagId;
    data['tag_name'] = this.tagName;
    data['tag_score'] = this.tagScore;
    data['tag_type'] = this.tagType;
    data['tag_image'] = this.tagImage;
    data['content_id'] = this.contentId;
    data['type_name'] = this.typeName;
    return data;
  }
}

class Actions {
  String actionId;
  String actionName;
  String actionType;
  String actionIcon;
  String actionButton;
  String actionXpreward;
  String actionCoinreward;
  String actionLang;
  String actionSortlang;
  String actionButtonlangState1;
  String actionButtonlangState2;
  String actionApiOncomplete;
  String contentId;
  String totalCompleted;
  String userCompleted;

  Actions(
      {this.actionId,
        this.actionName,
        this.actionType,
        this.actionIcon,
        this.actionButton,
        this.actionXpreward,
        this.actionCoinreward,
        this.actionLang,
        this.actionSortlang,
        this.actionButtonlangState1,
        this.actionButtonlangState2,
        this.actionApiOncomplete,
        this.contentId,
        this.totalCompleted,
        this.userCompleted});

  Actions.fromJson(Map<String, dynamic> json) {
    actionId = json['action_id'];
    actionName = json['action_name'];
    actionType = json['action_type'];
    actionIcon = json['action_icon'];
    actionButton = json['action_button'];
    actionXpreward = json['action_xpreward'];
    actionCoinreward = json['action_coinreward'];
    actionLang = json['action_lang'];
    actionSortlang = json['action_sortlang'];
    actionButtonlangState1 = json['action_buttonlang_state1'];
    actionButtonlangState2 = json['action_buttonlang_state2'];
    actionApiOncomplete = json['action_api_oncomplete'];
    contentId = json['content_id'];
    totalCompleted = json['total_completed'];
    userCompleted = json['user_completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['action_id'] = this.actionId;
    data['action_name'] = this.actionName;
    data['action_type'] = this.actionType;
    data['action_icon'] = this.actionIcon;
    data['action_button'] = this.actionButton;
    data['action_xpreward'] = this.actionXpreward;
    data['action_coinreward'] = this.actionCoinreward;
    data['action_lang'] = this.actionLang;
    data['action_sortlang'] = this.actionSortlang;
    data['action_buttonlang_state1'] = this.actionButtonlangState1;
    data['action_buttonlang_state2'] = this.actionButtonlangState2;
    data['action_api_oncomplete'] = this.actionApiOncomplete;
    data['content_id'] = this.contentId;
    data['total_completed'] = this.totalCompleted;
    data['user_completed'] = this.userCompleted;
    return data;
  }
}

class VolunteerRecords {
  String recordId;
  String recordStatus;
  String recordImage;
  String recordHours;
  String recordDate;
  String userId;
  String recordDescription;
  String recordEvent;
  Null volunteerFormResponseId;

  VolunteerRecords(
      {this.recordId,
        this.recordStatus,
        this.recordImage,
        this.recordHours,
        this.recordDate,
        this.userId,
        this.recordDescription,
        this.recordEvent,
        this.volunteerFormResponseId});

  VolunteerRecords.fromJson(Map<String, dynamic> json) {
    recordId = json['record_id'];
    recordStatus = json['record_status'];
    recordImage = json['record_image'];
    recordHours = json['record_hours'];
    recordDate = json['record_date'];
    userId = json['user_id'];
    recordDescription = json['record_description'];
    recordEvent = json['record_event'];
    volunteerFormResponseId = json['volunteer_form_response_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['record_id'] = this.recordId;
    data['record_status'] = this.recordStatus;
    data['record_image'] = this.recordImage;
    data['record_hours'] = this.recordHours;
    data['record_date'] = this.recordDate;
    data['user_id'] = this.userId;
    data['record_description'] = this.recordDescription;
    data['record_event'] = this.recordEvent;
    data['volunteer_form_response_id'] = this.volunteerFormResponseId;
    return data;
  }
}

class Attendees {
  String userId;
  String userUsername;
  String userFirstname;
  String userLastname;
  String userRank;
  String userPoints;
  String userCoins;
  String userIcon;
  String userDatecreated;
  String userAvatar;
  String userBanned;
  List<Dimensions> dimensions;

  Attendees(
      {this.userId,
        this.userUsername,
        this.userFirstname,
        this.userLastname,
        this.userRank,
        this.userPoints,
        this.userCoins,
        this.userIcon,
        this.userDatecreated,
        this.userAvatar,
        this.userBanned,
        this.dimensions});

  Attendees.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userUsername = json['user_username'];
    userFirstname = json['user_firstname'];
    userLastname = json['user_lastname'];
    userRank = json['user_rank'];
    userPoints = json['user_points'];
    userCoins = json['user_coins'];
    userIcon = json['user_icon'];
    userDatecreated = json['user_datecreated'];
    userAvatar = json['user_avatar'];
    userBanned = json['user_banned'];
    if (json['dimensions'] != null) {
      dimensions = new List<Dimensions>();
      json['dimensions'].forEach((v) {
        dimensions.add(new Dimensions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_username'] = this.userUsername;
    data['user_firstname'] = this.userFirstname;
    data['user_lastname'] = this.userLastname;
    data['user_rank'] = this.userRank;
    data['user_points'] = this.userPoints;
    data['user_coins'] = this.userCoins;
    data['user_icon'] = this.userIcon;
    data['user_datecreated'] = this.userDatecreated;
    data['user_avatar'] = this.userAvatar;
    data['user_banned'] = this.userBanned;
    if (this.dimensions != null) {
      data['dimensions'] = this.dimensions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}