<body style="background:'#293241';">
    <h1 style="color:'#edf2f7'">Bonjour {{$user->username}}</h1>
    <h3 style="color:'#edf2f7'">Vous avez reçu un commentaire sur votre post "{{$post->titre}}" </h3>
    <p style="color:'#edf2f7'">
        Consultez le en cliquant <a href="http://127.0.0.1:8000/post/{{$post->id}}">ici</a>
    </p>
</body>