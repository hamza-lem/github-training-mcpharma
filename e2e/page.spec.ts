import { test, expect } from '@playwright/test';

test('has title', async ({ page }) => {
  await page.goto('/');

  // Expect a title "to contain" a substring.
  await expect(page).toHaveTitle(/Create Next App/);
});

test('get Deploy link', async ({ page, context }) => {
  await page.goto('/');

  // Click the get started link.
  const pagePromise = context.waitForEvent('page');
  await page.getByRole('link', { name: /Deploy now/ }).click();
  const newPage = await pagePromise;
  // Expects page to have a heading with the name of Installation.
  await expect(newPage.getByText(/Let's build something new/)).toBeVisible();
});
