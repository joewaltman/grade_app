Factory.define :user do |user|
  user.name                   "Joe Waltman"
  user.email                  "joe@example.com"
  user.password               "foobar"
  user.password_confirmation  "foobar"
end

Factory.define :donor do |donor|
  donor.name        "Joe Waltman"
  donor.email       "joewaltman@example.com"
  donor.association :user
end