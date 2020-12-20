Rails.application.config.songkick_api = YAML.load_file(Rails.root.join('config/songkick.yml'))[Rails.env]
