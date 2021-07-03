class ChangeColumnToEvent < ActiveRecord::Migration[6.0]
def up
    # Not Null制約を外す(NULLがOK)
    change_column_null :events, :owner_id, true
  end

  def down
    # Not Null制約を付ける(NULLがNG)
    change_column_null :events, :owner_id, false
  end
end
