module BankAccountsHelper
  def status_label(status)
    case status
      when 'created' then
        'bg-info'
      when 'working' then
        'bg-success'
      when 'inactive' then
        'bg-gray'
      when 'transfer_certificate' then
        'bg-warning'
      when 'no_money' then
        'bg-danger'
      when 'locked' then
        'bg-inverse'
      else
        'bg-info'
    end
  end
end