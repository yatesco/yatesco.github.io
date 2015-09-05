(setq debug-on-error t)
(require 'ox-publish)
(setq org-publish-project-alist
      '(("org-colinyates"
         ;; Path to your org files.
         :base-directory "_org/posts"
         :base-extension "org"
         ;; Path to your Jekyll project.
         :publishing-directory "_posts"
         :recursive t
         ;; this is for org-mode version 8 and on
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :html-extension "html"
         :body-only t ;; Only export section between <body> </body> (body-only)
         :with-toc nil ;; don't include the table of content
         )
        ("org-static-colinyates"
         :base-directory "_org/images"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
         :publishing-directory "assets"
         :recursive t
         :publishing-function org-publish-attachment)

        ("blog" :components ("org-colinyates" "org-static-colinyates"))))

;; now publish it
(org-publish "blog" t)
