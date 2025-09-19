from playwright.sync_api import sync_playwright

def run(playwright):
    browser = playwright.chromium.launch()
    page = browser.new_page()
    page.goto("http://localhost:3000/")

    # Take a screenshot of the initial page load
    page.screenshot(path="jules-scratch/verification/initial-load.png")

    # Take a screenshot of the light mode
    page.screenshot(path="jules-scratch/verification/light-mode.png")

    # Wait for the theme switcher button to be visible
    page.wait_for_selector(".theme-switcher", timeout=60000)

    # Click the theme switcher button
    page.click(".theme-switcher")

    # Wait for the theme to change
    page.wait_for_timeout(500)

    # Take a screenshot of the dark mode
    page.screenshot(path="jules-scratch/verification/dark-mode.png")

    browser.close()

with sync_playwright() as playwright:
    run(playwright)
