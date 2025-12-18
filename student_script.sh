mkdir my_blog
cd my_blog && touch student_script.sh
mkdir posts drafts assets config
cd posts
echo "My First Blog Post Welcome to my blog! This is my first post about learning Linux commands. Stay tuned for more content." > first_post.md

echo "# Learning Git" > second_post.md && echo "Today I learned about version control." >> second_post.md && echo "Git is amazing for tracking changes." >> second_post.md

cd..&& echo "# Draft: Advanced Linux Coming soon..." > drafts/upcoming.md
echo "Site Title: My Tech Blog Author: Your Name Theme: Dark Mode" > config/site_config.txt

ls posts | wc -l > blog_stats.txt #total number of files in posts 

wc -l posts/first_post.md >> blog_stats.txt # total number of lines in first_post.txt

wc -w posts/*.md >> blog_stats.txt #total number of words in .md in the blog_stats.txt

head -n 1 posts/second_post.md >> blog_stats.txt
tail -n 1 config/site_config.txt >> blog_stats.txt

chmod 600 config/site_config.txt # make file private
chmod 644 posts/*.md # make file only user can edit and all users can read it

ls -l config/* && ls -l posts/*

git init
git config --global user.name "username"
git config --global user.email "email"
git add .
git status
git commit-m "Initial blog setup"
git log
git push


