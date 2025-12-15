mkdir my_blog
cd my_blog && touch student_script.sh
mkdir posts drafts assets config
cd posts
echo "My First Blog Post Welcome to my blog! This is my first post about learning Linux commands. Stay tuned for more content." > first_post.md

echo "# Learning Git" > second_post.md && echo "Today I learned about version control." >> second_post.md && echo "Git is amazing for tracking changes." >> second_post.md

cd..&& echo "# Draft: Advanced Linux Coming soon..." > drafts/upcoming.md
echo "Site Title: My Tech Blog Author: Your Name Theme: Dark Mode" > config/site_config.txt

find posts -type f | wc -l > blog_stats.txt

wc -l posts/first_post.md >> blog_stats.txt
wc -w posts/* >> blog_stats.txt
head -n 1 posts/second_post.md >> blog_stats.txt
tail -n 1 config/site_config.txt >> blog_stats.txt

chmod 600 config/site_config.txt
chmod 644 posts/*.md

ls -l config/* && ls -l posts/*

git init
git


