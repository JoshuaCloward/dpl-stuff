class Animal < ActiveRecord::Base

    belongs_to :trainer
    def self.trainer
      where(trainer_id: nil)
    end
    def self.trained
      where(trained: true)
    end
    def self.cats
      where('LOWER(species) = ?', 'cat')
    end
    def self.dog
      where('LOWER(species) = ?', 'dog')
    end

    def trainers_name
        if trainer.present?
        trainer.name
      else
          'I have no trainer'
        end
    end


end
