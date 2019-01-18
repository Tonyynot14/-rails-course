class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer
      t.string :flag
    end
  end
end
#extra end??? do not see in teachers file but nothing ends the class 