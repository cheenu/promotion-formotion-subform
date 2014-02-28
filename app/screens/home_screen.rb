class HomeScreen < PM::FormotionScreen

  def on_load
  end

  def will_appear
    self.form.build_section do |section|
      section.title = "Test"
      section.build_row do |row|
        row.title = "Label"
        row.type = :string
      end
      section.build_row do |row|
        row.title = "Subform"
        row.type = :subform
        row.key = :subform
        row.subform = {
            title: "Numbers",
            sections: [
                {
                    select_one: true,
                    rows: [
                      {
                        title: 'One',
                        type: :check
                      },
                      {
                        title: 'Two',
                        type: :check
                      },
                      {
                        title: 'Three',
                        type: :check
                      }
                    ]
                },
                {
                    rows: [
                        {
                            title: 'Back',
                            type: :back
                        }
                    ]
                }
            ]
        }
      end
    end
    self.form.reload_data
  end

  def table_data
    {}
  end
end
