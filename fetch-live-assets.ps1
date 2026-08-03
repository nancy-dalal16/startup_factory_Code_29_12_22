# Downloads the image assets referenced by the live site into ./assets/images
# Run from the project root:  powershell -ExecutionPolicy Bypass -File .\fetch-live-assets.ps1

$base = "https://www.the-startupfactory.com/assets/images"
$root = Join-Path $PSScriptRoot "assets/images"

$files = @(
    "favicon.png",
    "home/banner_bg.png",
    "home/skills.png",
    "home/resourcing.png",
    "home/cost.png",
    "home/service-1.png",
    "home/service-2.png",
    "home/service-3.png",
    "home/service-4.png",
    "home/service-5.png",
    "home/service-6.png",
    "home/service-7.png",
    "home/service-8.png",
    "about/vision.png",
    "about/mission.png",
    "about/values.png",
    "about/body_img.png",
    "about/rahul_bora.png",
    "services/service_1.png",
    "services/service_2.png",
    "services/service_3.png",
    "services/service_4.png",
    "services/service_5.png",
    "services/service_6.png",
    "services/service_7.png",
    "services/service_8.png"
)

foreach ($f in $files) {
    $dest = Join-Path $root $f
    New-Item -ItemType Directory -Force -Path (Split-Path $dest) | Out-Null
    try {
        Invoke-WebRequest -Uri "$base/$f" -OutFile $dest -UseBasicParsing
        Write-Host "OK   $f"
    }
    catch {
        Write-Host "FAIL $f  ($($_.Exception.Message))"
    }
}
