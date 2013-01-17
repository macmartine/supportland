class AnswerTypeValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)

    if record.answer_type == 'String'

    elsif record.answer_type == 'Number'
      unless record.answer_type.kind_of? Integer
        record.errors[:answer] << 'is not a number'
      end
    elsif record.answer_type == 'Yes/No'

    elsif record.answer_type == 'True/False'
    end

  end

end
