[//]: # (specification for the blog project challenge)

Blog Project Specification
==========================

Additional materials
--------------------

There are some repositories, that could help while solving the challenges
described in this specification.

- [Project template](https://github.com/edu-python-course/django-template)
- [HTML templates](https://github.com/edu-python-course/blog-bootstrap)

Adding views (challenge)
------------

Any time you see `<something>` in URLs below, this means that the portion in
angle braces is a dynamic part of the URL. The actual data provided within
views no matter for this moment.

The blog site should implement views as follows:

- `/` and `/blogs/`: blogposts list view
- `/<slug>/`: blogpost detail view
- `/create/`: blogpost creation view
- `/<slug>/update/`: blogpost update view
- `/<slug>/delete/`: blogpost delete view
- `/archive/<year>/<month>/`: blogposts archive view
- `/profile/<username>/`: blog-site user's personal page
- `/signup/`: new user registration view
- `/signin/`: user login view
- `/logout/`: user logout view

The `/archive/` route should validate its arguments using regular expression.
The validation rules are:

- `year` is a 4 digits group (e.g. 2022, 2021 etc.)
- `month` is a 1-or-2 digits group. Its range is limited with values
  from 1 to 12. Leading zero is optional.

The `/logout/` should always redirect to a homepage.
