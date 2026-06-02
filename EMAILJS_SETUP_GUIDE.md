# EmailJS Setup Guide for Contact Form

## What I Fixed:
1. ✅ **Email Button**: Now works reliably with multiple fallback methods
2. ✅ **Contact Form**: Upgraded to use EmailJS for direct email delivery
3. ✅ **Code Issues**: Fixed deprecated `pageYOffset` warnings
4. ✅ **User Experience**: Added loading states and better error handling

## To Make Contact Form Work (EmailJS Setup):

### Step 1: Create EmailJS Account
1. Go to https://www.emailjs.com/
2. Sign up for a free account
3. Verify your email address

### Step 2: Add Email Service
1. Go to "Email Services" in your dashboard
2. Click "Add New Service"
3. Choose your email provider (Gmail recommended):
   - **Service ID**: `gmail_service` (remember this)
   - **Email**: `adeeshawaheed786@gmail.com`
   - Follow the authentication steps

### Step 3: Create Email Template
1. Go to "Email Templates"
2. Click "Create New Template"
3. **Template ID**: `contact_template` (remember this)
4. Use this template content:

```
Subject: New Contact Form Message - {{subject}}

From: {{from_name}} ({{from_email}})
Subject: {{subject}}

Message:
{{message}}

---
Sent from your portfolio website contact form
```

### Step 4: Get Your Public Key
1. Go to "Account" → "General"
2. Copy your **Public Key** (starts with something like `user_`)

### Step 5: Update Your Code
Replace these placeholders in `script.js`:

```javascript
// Line 2: Replace YOUR_PUBLIC_KEY
emailjs.init("YOUR_ACTUAL_PUBLIC_KEY_HERE");

// Line 185: Replace YOUR_SERVICE_ID
emailjs.send('gmail_service', 'contact_template', templateParams)
```

**Example with real values:**
```javascript
// Initialize EmailJS
emailjs.init("user_abcd1234efgh5678"); // Your actual public key

// Send email using EmailJS  
emailjs.send('gmail_service', 'contact_template', templateParams)
```

### Step 6: Test the Setup
1. Save your files
2. Open your website
3. Fill out the contact form
4. Submit and check your email inbox

## Current Features:
- ✅ Form validation (required fields, email format)
- ✅ Loading state during submission
- ✅ Success/error messages
- ✅ Automatic fallback to mailto if EmailJS fails
- ✅ Email button with hover effects
- ✅ Mobile-friendly design

## Free Plan Limits:
- 200 emails per month
- Perfect for a portfolio site
- No credit card required

## Need Help?
If you need assistance with the setup, just let me know and I can help you configure it!