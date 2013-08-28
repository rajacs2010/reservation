ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "qadex.com",
  :user_name            => "muthukrishnan@qadex.com",
  :password             => "TKMuthu1989",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
