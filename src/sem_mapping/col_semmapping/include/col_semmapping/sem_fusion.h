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

        public:
            SemanticFusion();
            void show_map_id();
            SemanticObject fuseObjectBoundingBoxes(SemanticObject initial_obj, SemanticObject recieved_obj);
            SemanticObject GeometricFusionOfSemanticObject(SemanticObject initial_obj, SemanticObject received_obj);
            bool similarClasses(std::string object1_name, std::string object_name2);
            bool checkTheAbilityOfObjectsToOverlap(std::string object1_name, std::string object_name2);
            void removeMapInconsistencies(semmapping::SemanticMap map, semmapping::SemanticMap &map_cleared);
            void semfusion(semmapping::SemanticMap previous_map, semmapping::SemanticMap received_map, semmapping::SemanticMap &global_map);
    };
}

#endif // SEM_FUSION_H