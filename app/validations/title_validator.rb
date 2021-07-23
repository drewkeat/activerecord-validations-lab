class TitleValidator < ActiveModel::Validator
    def validate(record)
        regex = [
            /Won't Believe/,
            /Secret/,
            /Top \d/,
            /Guess/
        ]

        if regex.none? {|exp| exp.match(record.title)}
            record.errors[:title] << "Must be clickbait"
        end
    end
end