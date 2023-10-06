log_dir="/var/log"
utilisateur="issaev"
nombre_connexions=$(grep "$utilisateur" "$log_dir/auth.log")
current_datetime=$(date +"%d-%m-%Y-%H:%M")
filename="number_connection-$current_datetime"
  echo "$nombre_connexions" | wc -l > "$filename"
 tar -cvzf "/home/issaev/git-project/shell-exe/Job08/Backup/$filename.tar" "$filename"
 
  echo "Le nombre de connexions de l'utilisateur $utilisateur a été extrait et archivé dans $backup_dir/$filename.tar"
 rm number_connection-$current_datetime
