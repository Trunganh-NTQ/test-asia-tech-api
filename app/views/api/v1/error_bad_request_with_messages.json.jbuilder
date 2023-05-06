# frozen_string_literal: true

json.status :error
json.error_message @errors.full_messages&.first
