module CLIHelper
  def cli_run(args)
    path = File.expand_path('../exe/exif_csv', __dir__)
    Tempfile.open(['exif_csv', '.rb']) do |f|
      f.puts(File.read(path))
      f.flush
      cmd = ([:ruby, f.path] + args).join(' ')
      Open3.capture2e(cmd)
    end
  end
end
include CLIHelper
