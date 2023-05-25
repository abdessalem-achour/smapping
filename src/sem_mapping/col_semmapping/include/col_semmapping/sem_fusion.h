#ifndef SEM_FUSION_H
#define SEM_FUSION_H

#include <semanticmap.h>


namespace semmapping
{
    class SemanticFusion
    {
        inline static double ref_fit(const polygon &newpg, const polygon &refpg)
        {
            multi_polygon sect;
            bg::intersection(newpg, refpg, sect);
            return bg::area(sect) / bg::area(refpg);
        }

        inline static double iou(const polygon &a, const polygon &b)
        {
            multi_polygon un;
            bg::union_(a, b, un);
            multi_polygon sect;
            bg::intersection(a, b, sect);
            //std::cout << "intersect: " << bg::area(sect) << " unioin: " <<bg::area(un) << std::endl;
            //intersection over union
            if(bg::area(un)!=0)
                return bg::area(sect) / bg::area(un);
            else
                return 0;
        }

        std::pair<double, double> get_real_object_length_width(const std::string &name)
        {
            std::pair<double, double> dimensions;
            if(name=="Chair") {dimensions.first= 0.6; dimensions.second= 0.57;} // Chair model in world well arranged
            //if(name=="Chair") {dimensions.first= 0.57; dimensions.second= 0.57;}  // Chair model in world cluttered
            else if (name== "Table") {dimensions.first= 1.782; dimensions.second= 0.8;}
            else if (name=="Shelf") {dimensions.first= 0.9; dimensions.second= 0.4;}
            else if (name=="Sofa bed" || name=="Couch"){dimensions.first= 0.97; dimensions.second= 2.009;}
            else if (name=="Ball"){dimensions.first= 0.2; dimensions.second= 0.2;}
            else {dimensions.first= 0.0; dimensions.second= 0.0;}
            return dimensions;
        }

        std::list<std::string> map_considered_objects{"Chair","Table","Shelf","Sofa bed","Couch"};

        public:
            SemanticFusion();
            void show_map_id();
            SemanticObject copySemanticObject(SemanticObject obj);
            SemanticObject nmsFusionOfSemanticObject(SemanticObject initial_obj, SemanticObject recieved_obj);
            SemanticObject GeometricFusionOfSemanticObject(SemanticObject initial_obj, SemanticObject received_obj);
            bool similarClasses(std::string object1_name, std::string object_name2);
            bool checkTheAbilityOfObjectsToOverlap(std::string object1_name, std::string object_name2);
            bool inConsideredObjectList(std::string object_name);
            bool validObjectSurface(std::string object_name, polygon object_obb);
            bool isRectangular(polygon object_obb);
            void removeMapInconsistencies(semmapping::SemanticMap map, semmapping::SemanticMap &map_cleared, double overlap_threshold = 0.1);
            void semfusion(semmapping::SemanticMap previous_map, semmapping::SemanticMap received_map, semmapping::SemanticMap &global_map, double overlap_threshold = 0.0);
    };
}

#endif // SEM_FUSION_H