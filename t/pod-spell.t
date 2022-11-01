use Test::More;
eval "use Test::Spelling";
plan skip_all => "Test::Spelling required for testing POD spelling" if $@;
add_stopwords(<DATA>);
all_pod_files_spelling_ok();

__DATA__
Auth
MessagingServiceSid
Twilio
api
json
twilio
url
username
SMS
5MB
ApplicationSid
ErrorCode
MaxPrice
MediaUrl
MediaUrls
MessageSid
MessageStatus
MessageStatusCallback
ProvideFeedback
StatusCallback
ValidityPeriod
gif
hostname
jpeg
png
trackable
AccountSID
AccountSid
AuthToken
versioned
