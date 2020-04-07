class CreateTicketOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :ticket_orders do |t|
      t.references :tickettypes, foreign_key: true
      t.references :user, foreign_key: true
      t.references :events, foreign_key: true

      t.timestamps
    end
  end
end
