class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone
  attribute :subject
  attribute :message

  def headers
    {
      #this is the subject for the email generated, it can be anything you want
      subject: "Contact through website",
      to: 'weigheasy2022@gmail.com',
      from: %("#{name}" <#{email}>)
      #the from will display the name entered by the user followed by the email
    }
  end
end
