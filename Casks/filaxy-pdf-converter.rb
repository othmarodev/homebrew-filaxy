cask "filaxy-pdf-converter" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0"
  sha256 arm:   "b963137aa3e5f9dcfe5b1922f1fad8a60fee95733099c361a07cd14c0a3291a1",
         intel: "9a2ca6b3cf5e872775aba95a97b60b5cd198ccb7adfde618539046229988c059"

  url "https://github.com/othmarodev/filaxy-pdf-converter/releases/download/v1.0.0/Filaxy-PDF-Converter-#{version}-#{arch}.dmg"
  name "Filaxy PDF Converter"
  desc "High-fidelity PDF to Word (.docx) converter with fidelity verification"
  homepage "https://github.com/othmarodev/filaxy-pdf-converter"

  depends_on macos: :ventura

  app "Filaxy PDF Converter.app"

  zap trash: [
    "~/Library/Preferences/app.filaxy.PDFConverter.plist",
    "~/Library/Services/Convertir a Word con Filaxy.workflow",
  ]
end
