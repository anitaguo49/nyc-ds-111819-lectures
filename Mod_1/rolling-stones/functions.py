def find_by_name(our_data,name):
    for album in our_data:
        if album['album'] == name:
            return album
    return None

def find_by_year(our_data,year):
    return [album for album in our_data if album['number'] == str(year)]

def find_by_rank(our_data,rank):
    for album in our_data:
        if album['number'] == str(rank):
            return album
    return None