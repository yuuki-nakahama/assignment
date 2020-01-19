class PostCodeValidator < ActiveModel::EachValidator
    def validate_each(title, body)
      record.errors.add(attribute, 'は、数字3桁＋ハイフン（-）＋数字4桁の形式で入力してください。') unless value =~ /\A[0-9]{3}-[0-9]{4}\z/
    end
  end


class Book < ApplicationRecord
    validates :body, presence: true
    validates :title, presence: true
end

