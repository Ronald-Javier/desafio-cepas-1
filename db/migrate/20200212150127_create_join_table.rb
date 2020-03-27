class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :workers, :projects do |t|
      t.index [:worker_id, :project_id]
      t.index [:project_id, :worker_id]
    end
  end
end
