%Smith, Baker, Carpenter, and Tailor have the professions smith, baker, carpenter, and tailor 
%but their professions do not match their names.
%Each of them has a son, but their sons also do not have a profession shown by their name.
%No son has the same profession as his father.
%Baker has the same profession as Carpenter's son.
%Smith's son is a baker.

puzzel_one(X) :- X = [[smith, SmithDad, SmithSon],
                      [baker, BakerDad, BakerSon],
                      [carpenter, CarpenterDad, CarpenterSon],
                      [tailor, TailorDad, TailorSon]],
    
    %list of jobs
    Jobs = [smith, baker, carpenter, tailor],
    
    %permutation of fathers jobs
    permutation(Jobs, [SmithDad, BakerDad, CarpenterDad, TailorDad]),
    
    %permutation of the sons jobs
    permutation(Jobs, [SmithSon, BakerSon, CarpenterSon, TailorSon]),
    
    %no father has the same name job
    SmithDad \= smith,
    BakerDad \= baker,
    CarpenterDad \= carpenter,
    TailorDad \= tailor,
    
    %no son has the same name job
    SmithSon \= smith,
    BakerSon \= baker,
    CarpenterSon \= carpenter,
    TailorSon \= tailor,
    
    %baker's dad has the same job as the carpenter's son
    BakerDad = CarpenterSon,
    
    %smith's son is a baker
    SmithSon = baker.