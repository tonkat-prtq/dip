class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def deleted_mail(members, agenda)
    @members = members
    @agenda = agenda
    @members.each do |member|
      mail to: member.email, subject: I18n.t('views.messages.agenda_is_deleted', agenda: @agenda.title)
    end
  end
end
