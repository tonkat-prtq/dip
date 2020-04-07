class ChangeOwnerMailer < ApplicationMailer
  def change_owner_mail(team)
    @team = team
    mail to: @team.owner.email, subject: I18n.t('views.messages.change_owner_mail', name: @team.name)
  end
end