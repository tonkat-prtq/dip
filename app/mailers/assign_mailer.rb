class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def change_owner_mail(team)
    @team = team
    mail to: @team.owner.email, subject: I18n.t('views.messages.change_owner_mail', name: @team.name)
  end
end