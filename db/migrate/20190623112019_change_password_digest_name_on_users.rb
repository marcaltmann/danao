class ChangePasswordDigestNameOnUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.rename :password_digest, :password_digest_old
    end
  end
end
