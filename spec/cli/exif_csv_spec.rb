# frozen_string_literal: true
TEST_IMG_PATH = File.expand_path('../img', __dir__)

describe 'exif_csv' do
  context 'when no image was found' do
    specify do
      img = TEST_IMG_PATH + '/wrong_path'
      output, status = cli_run([img])

      expect(status.success?).to be false
      expect(output).to match /No image was found in/
    end
  end

  context 'when successfully csv was omitted' do
    specify do
      img = TEST_IMG_PATH
      output, status = cli_run([img, '--dry-run'])

      expect(status.success?).to be true
      expect(output).to match /#{TEST_IMG_PATH}\/exif.jpg,42.75110694444444,-84.49125222222222/
    end
  end
end
