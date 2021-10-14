import 'package:mobile/generated/json/base/json_convert_content.dart';
import 'package:mobile/generated/json/base/json_field.dart';

class ContributorModelEntity with JsonConvert<ContributorModelEntity> {
	String? login;
	double? id;
	@JSONField(name: "node_id")
	String? nodeId;
	@JSONField(name: "avatar_url")
	String? avatarUrl;
	@JSONField(name: "gravatar_id")
	String? gravatarId;
	String? url;
	@JSONField(name: "html_url")
	String? htmlUrl;
	@JSONField(name: "followers_url")
	String? followersUrl;
	@JSONField(name: "following_url")
	String? followingUrl;
	@JSONField(name: "gists_url")
	String? gistsUrl;
	@JSONField(name: "starred_url")
	String? starredUrl;
	@JSONField(name: "subscriptions_url")
	String? subscriptionsUrl;
	@JSONField(name: "organizations_url")
	String? organizationsUrl;
	@JSONField(name: "repos_url")
	String? reposUrl;
	@JSONField(name: "events_url")
	String? eventsUrl;
	@JSONField(name: "received_events_url")
	String? receivedEventsUrl;
	String? type;
	@JSONField(name: "site_admin")
	bool? siteAdmin;
	double? contributions;
}
